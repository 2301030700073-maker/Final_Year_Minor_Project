.class public final Lexpo/modules/video/records/SubtitleTrack$Companion;
.super Ljava/lang/Object;
.source "Tracks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/records/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/video/records/SubtitleTrack$Companion;",
        "",
        "<init>",
        "()V",
        "fromFormat",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "format",
        "Landroidx/media3/common/Format;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/video/records/SubtitleTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromFormat(Landroidx/media3/common/Format;)Lexpo/modules/video/records/SubtitleTrack;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 19
    :cond_0
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    return-object v0

    .line 20
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez p1, :cond_2

    return-object v0

    .line 21
    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v2, Lexpo/modules/video/records/SubtitleTrack;

    invoke-direct {v2, v1, p1, v0}, Lexpo/modules/video/records/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

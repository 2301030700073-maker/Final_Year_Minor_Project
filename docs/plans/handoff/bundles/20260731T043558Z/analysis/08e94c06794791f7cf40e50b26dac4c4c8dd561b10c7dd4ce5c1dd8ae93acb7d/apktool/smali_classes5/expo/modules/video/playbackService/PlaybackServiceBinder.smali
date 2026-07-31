.class public final Lexpo/modules/video/playbackService/PlaybackServiceBinder;
.super Landroid/os/Binder;
.source "ExpoVideoPlaybackService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "Landroid/os/Binder;",
        "service",
        "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
        "<init>",
        "(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V",
        "getService",
        "()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
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
.field private final service:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;


# direct methods
.method public constructor <init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->service:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    return-void
.end method


# virtual methods
.method public final getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->service:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    return-object v0
.end method

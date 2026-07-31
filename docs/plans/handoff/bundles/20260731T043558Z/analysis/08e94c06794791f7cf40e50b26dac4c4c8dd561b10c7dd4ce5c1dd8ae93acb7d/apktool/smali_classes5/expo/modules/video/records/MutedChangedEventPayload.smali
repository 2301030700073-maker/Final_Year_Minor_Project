.class public final Lexpo/modules/video/records/MutedChangedEventPayload;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/video/records/MutedChangedEventPayload;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "muted",
        "",
        "oldMuted",
        "<init>",
        "(ZLjava/lang/Boolean;)V",
        "getMuted$annotations",
        "()V",
        "getMuted",
        "()Z",
        "getOldMuted$annotations",
        "getOldMuted",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
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
.field private final muted:Z

.field private final oldMuted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZLjava/lang/Boolean;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lexpo/modules/video/records/MutedChangedEventPayload;->muted:Z

    .line 28
    iput-object p2, p0, Lexpo/modules/video/records/MutedChangedEventPayload;->oldMuted:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic getMuted$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getOldMuted$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMuted()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lexpo/modules/video/records/MutedChangedEventPayload;->muted:Z

    return v0
.end method

.method public final getOldMuted()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/video/records/MutedChangedEventPayload;->oldMuted:Ljava/lang/Boolean;

    return-object v0
.end method

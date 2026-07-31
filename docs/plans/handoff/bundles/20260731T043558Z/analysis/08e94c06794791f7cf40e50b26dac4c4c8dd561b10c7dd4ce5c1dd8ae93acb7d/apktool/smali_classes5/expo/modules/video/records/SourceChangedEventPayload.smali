.class public final Lexpo/modules/video/records/SourceChangedEventPayload;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/video/records/SourceChangedEventPayload;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "source",
        "Lexpo/modules/video/records/VideoSource;",
        "oldSource",
        "<init>",
        "(Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V",
        "getSource$annotations",
        "()V",
        "getSource",
        "()Lexpo/modules/video/records/VideoSource;",
        "getOldSource$annotations",
        "getOldSource",
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
.field private final oldSource:Lexpo/modules/video/records/VideoSource;

.field private final source:Lexpo/modules/video/records/VideoSource;


# direct methods
.method public constructor <init>(Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lexpo/modules/video/records/SourceChangedEventPayload;->source:Lexpo/modules/video/records/VideoSource;

    .line 33
    iput-object p2, p0, Lexpo/modules/video/records/SourceChangedEventPayload;->oldSource:Lexpo/modules/video/records/VideoSource;

    return-void
.end method

.method public static synthetic getOldSource$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSource$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getOldSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/video/records/SourceChangedEventPayload;->oldSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method public final getSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/video/records/SourceChangedEventPayload;->source:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

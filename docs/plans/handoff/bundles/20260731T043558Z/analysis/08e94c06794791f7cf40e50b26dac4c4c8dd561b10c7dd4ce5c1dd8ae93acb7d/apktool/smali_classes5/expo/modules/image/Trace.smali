.class public final Lexpo/modules/image/Trace;
.super Ljava/lang/Object;
.source "Trace.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/image/Trace;",
        "",
        "<init>",
        "()V",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "loadNewImageBlock",
        "getLoadNewImageBlock",
        "lastCookieValue",
        "",
        "getNextCookieValue",
        "expo-image_release"
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
.field public static final INSTANCE:Lexpo/modules/image/Trace;

.field private static lastCookieValue:I

.field private static final loadNewImageBlock:Ljava/lang/String;

.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/Trace;

    invoke-direct {v0}, Lexpo/modules/image/Trace;-><init>()V

    sput-object v0, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    .line 4
    const-string v0, "ExpoImage"

    sput-object v0, Lexpo/modules/image/Trace;->tag:Ljava/lang/String;

    .line 5
    const-string v0, "load new image"

    sput-object v0, Lexpo/modules/image/Trace;->loadNewImageBlock:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoadNewImageBlock()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lexpo/modules/image/Trace;->loadNewImageBlock:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextCookieValue()I
    .locals 2

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    sget v0, Lexpo/modules/image/Trace;->lastCookieValue:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lexpo/modules/image/Trace;->lastCookieValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lexpo/modules/image/Trace;->tag:Ljava/lang/String;

    return-object v0
.end method

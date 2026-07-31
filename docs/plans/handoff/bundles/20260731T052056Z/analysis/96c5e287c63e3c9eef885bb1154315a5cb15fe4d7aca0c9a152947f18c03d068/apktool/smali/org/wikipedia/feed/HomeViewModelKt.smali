.class public abstract Lorg/wikipedia/feed/HomeViewModelKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final noImageCardBackgroundColors:Ljava/util/List;

.field public static final noImageCardForegroundColors:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const v0, 0x7f060321

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f06040e

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f060403

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x3

    .line 23
    new-array v4, v3, [Ljava/lang/Integer;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v0, v4, v5

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v4, v0

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    aput-object v2, v4, v1

    .line 33
    .line 34
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sput-object v2, Lorg/wikipedia/feed/HomeViewModelKt;->noImageCardBackgroundColors:Ljava/util/List;

    .line 39
    .line 40
    const v2, 0x7f060320

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v4, 0x7f06040d

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const v6, 0x7f060402

    .line 55
    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    new-array v3, v3, [Ljava/lang/Integer;

    .line 62
    .line 63
    aput-object v2, v3, v5

    .line 64
    .line 65
    aput-object v4, v3, v0

    .line 66
    .line 67
    aput-object v6, v3, v1

    .line 68
    .line 69
    invoke-static {v3}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lorg/wikipedia/feed/HomeViewModelKt;->noImageCardForegroundColors:Ljava/util/List;

    .line 74
    .line 75
    return-void
.end method

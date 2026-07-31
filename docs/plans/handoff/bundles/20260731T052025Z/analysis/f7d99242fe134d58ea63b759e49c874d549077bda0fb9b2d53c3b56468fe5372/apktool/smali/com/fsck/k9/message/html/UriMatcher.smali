.class public abstract Lcom/fsck/k9/message/html/UriMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SUPPORTED_URIS:Ljava/util/Map;

.field public static final URI_SCHEME:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/fsck/k9/message/html/HttpUriParser;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/message/html/GenericUriParser;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lkotlin/Pair;

    .line 12
    .line 13
    const-string v3, "http:"

    .line 14
    .line 15
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lkotlin/Pair;

    .line 19
    .line 20
    const-string v4, "https:"

    .line 21
    .line 22
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lkotlin/Pair;

    .line 26
    .line 27
    const-string v5, "mailto:"

    .line 28
    .line 29
    invoke-direct {v4, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lkotlin/Pair;

    .line 33
    .line 34
    const-string v6, "matrix:"

    .line 35
    .line 36
    invoke-direct {v5, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lkotlin/Pair;

    .line 40
    .line 41
    const-string v7, "rtsp:"

    .line 42
    .line 43
    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lkotlin/Pair;

    .line 47
    .line 48
    const-string/jumbo v7, "xmpp:"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    new-array v1, v1, [Lkotlin/Pair;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    aput-object v2, v1, v7

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    aput-object v3, v1, v2

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    aput-object v4, v1, v2

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    aput-object v5, v1, v2

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    aput-object v6, v1, v2

    .line 71
    .line 72
    const/4 v2, 0x5

    .line 73
    aput-object v0, v1, v2

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/fsck/k9/message/html/UriMatcher;->SUPPORTED_URIS:Ljava/util/Map;

    .line 80
    .line 81
    new-instance v1, Lkotlin/text/Regex;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v8, v0

    .line 88
    check-cast v8, Ljava/lang/Iterable;

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    const/16 v13, 0x3e

    .line 92
    .line 93
    const-string/jumbo v9, "|"

    .line 94
    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v2, "(?:^|[\\s(\\n<])("

    .line 103
    .line 104
    const-string v3, ")"

    .line 105
    .line 106
    invoke-static {v2, v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    sput-object v1, Lcom/fsck/k9/message/html/UriMatcher;->URI_SCHEME:Lkotlin/text/Regex;

    .line 114
    .line 115
    return-void
.end method

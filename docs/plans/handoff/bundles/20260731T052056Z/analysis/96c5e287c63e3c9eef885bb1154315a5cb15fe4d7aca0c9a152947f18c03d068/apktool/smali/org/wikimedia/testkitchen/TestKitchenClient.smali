.class public final Lorg/wikimedia/testkitchen/TestKitchenClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ZONE_Z:Lj$/time/ZoneId;


# instance fields
.field public final eventProcessor:Lokhttp3/Request$Builder;

.field public final logger:Lokio/ByteString$Companion;

.field public final samplingController:Lokhttp3/ConnectionPool;

.field public final sessionController:Lorg/wikimedia/testkitchen/SessionController;

.field public final sourceConfig:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Z"

    .line 2
    .line 3
    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/wikimedia/testkitchen/TestKitchenClient;->ZONE_Z:Lj$/time/ZoneId;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;Lokio/ByteString$Companion;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->logger:Lokio/ByteString$Companion;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->sourceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    new-instance v1, Lorg/wikimedia/testkitchen/SessionController;

    .line 15
    .line 16
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, v1, Lorg/wikimedia/testkitchen/SessionController;->sessionTouched:Lj$/time/Instant;

    .line 27
    .line 28
    invoke-static {}, Lokio/Options$Companion;->generateSessionId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v1, Lorg/wikimedia/testkitchen/SessionController;->sessionId:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->sessionController:Lorg/wikimedia/testkitchen/SessionController;

    .line 35
    .line 36
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 37
    .line 38
    const/16 v3, 0x14

    .line 39
    .line 40
    invoke-direct {v2, v3, p2, v1}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->samplingController:Lokhttp3/ConnectionPool;

    .line 44
    .line 45
    new-instance p2, Lokhttp3/Request$Builder;

    .line 46
    .line 47
    new-instance v1, Lorg/wikimedia/testkitchen/ContextController;

    .line 48
    .line 49
    new-instance v1, Lokio/Path$Companion;

    .line 50
    .line 51
    const/16 v3, 0xd

    .line 52
    .line 53
    invoke-direct {v1, v3}, Lokio/Path$Companion;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v2, p2, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p1, p2, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p3, p2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 68
    .line 69
    const/16 p3, 0x10

    .line 70
    .line 71
    invoke-direct {p1, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p2, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p2, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->eventProcessor:Lokhttp3/Request$Builder;

    .line 77
    .line 78
    return-void
.end method

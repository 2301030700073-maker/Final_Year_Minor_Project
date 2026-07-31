.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;
.super Ljava/lang/Exception;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final subscriptionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    iput-wide p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->subscriptionId:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getSubscriptionId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->subscriptionId:J

    .line 2
    .line 3
    return-wide v0
.end method

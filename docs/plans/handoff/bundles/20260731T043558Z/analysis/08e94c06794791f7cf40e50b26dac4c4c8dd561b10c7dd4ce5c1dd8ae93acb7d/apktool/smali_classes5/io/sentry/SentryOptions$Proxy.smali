.class public final Lio/sentry/SentryOptions$Proxy;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private type:Ljava/net/Proxy$Type;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 2835
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2839
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2851
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2843
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2860
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    .line 2861
    iput-object p2, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    .line 2862
    iput-object p3, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    .line 2863
    iput-object p4, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    .line 2864
    iput-object p5, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 2868
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 2892
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .line 2876
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/net/Proxy$Type;
    .locals 1

    .line 2900
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 2884
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 2872
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0

    .line 2896
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    .line 2880
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/net/Proxy$Type;)V
    .locals 0

    .line 2904
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 2888
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    return-void
.end method

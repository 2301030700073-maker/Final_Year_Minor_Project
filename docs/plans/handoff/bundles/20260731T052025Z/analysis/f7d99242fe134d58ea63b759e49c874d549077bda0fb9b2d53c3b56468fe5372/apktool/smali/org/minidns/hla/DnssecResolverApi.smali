.class public final Lorg/minidns/hla/DnssecResolverApi;
.super Lorg/minidns/hla/ResolverApi;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lorg/minidns/hla/DnssecResolverApi;


# instance fields
.field public final dnssecClient:Lorg/minidns/dnssec/DnssecClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/hla/DnssecResolverApi;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/minidns/hla/DnssecResolverApi;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/minidns/hla/DnssecResolverApi;->INSTANCE:Lorg/minidns/hla/DnssecResolverApi;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/minidns/dnssec/DnssecClient;

    .line 2
    .line 3
    new-instance v1, Lorg/minidns/cache/LruCache;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/minidns/cache/LruCache;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->dnssecClient:Lorg/minidns/dnssec/DnssecClient;

    .line 15
    .line 16
    new-instance p0, Lorg/minidns/dnssec/DnssecClient;

    .line 17
    .line 18
    new-instance v0, Lorg/minidns/cache/LruCache;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/minidns/cache/LruCache;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 28
    .line 29
    new-instance p0, Lorg/minidns/dnssec/DnssecClient;

    .line 30
    .line 31
    new-instance v0, Lorg/minidns/cache/LruCache;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/minidns/cache/LruCache;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 41
    .line 42
    return-void
.end method

.class public abstract Lorg/minidns/hla/ResolverApi;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient;

    .line 2
    .line 3
    sget-object v1, Lorg/minidns/AbstractDnsClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

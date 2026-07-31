.class public interface abstract Lcom/mikepenz/fastadapter/IIdDistributor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Lokhttp3/ConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lokhttp3/ConnectionPool;

    .line 9
    .line 10
    return-void
.end method

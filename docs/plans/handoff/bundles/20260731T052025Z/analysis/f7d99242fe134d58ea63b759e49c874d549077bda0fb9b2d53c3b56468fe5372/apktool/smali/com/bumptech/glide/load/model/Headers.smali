.class public interface abstract Lcom/bumptech/glide/load/model/Headers;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Lcom/bumptech/glide/load/model/LazyHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 2
    .line 3
    sget-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 4
    .line 5
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
.end method

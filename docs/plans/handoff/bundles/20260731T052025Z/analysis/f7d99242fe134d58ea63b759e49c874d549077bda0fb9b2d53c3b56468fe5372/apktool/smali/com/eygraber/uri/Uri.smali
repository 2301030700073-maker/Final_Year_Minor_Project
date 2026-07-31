.class public interface abstract Lcom/eygraber/uri/Uri;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/eygraber/uri/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/eygraber/uri/UriSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/eygraber/uri/Uri$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/eygraber/uri/Uri$Companion;->$$INSTANCE:Lcom/eygraber/uri/Uri$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/eygraber/uri/Uri;->Companion:Lcom/eygraber/uri/Uri$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract buildUpon()Lcom/eygraber/uri/Uri$Builder;
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
.end method

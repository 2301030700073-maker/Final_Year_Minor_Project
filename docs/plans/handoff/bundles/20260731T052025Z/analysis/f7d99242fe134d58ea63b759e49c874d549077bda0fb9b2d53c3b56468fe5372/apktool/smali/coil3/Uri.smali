.class public final Lcoil3/Uri;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/Uri$Builder;
    }
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final fragment:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;

.field private final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/Uri;->separator:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/Uri;->authority:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/Uri;->query:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/Uri;->fragment:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcoil3/Uri;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcoil3/Uri;

    .line 10
    .line 11
    iget-object p1, p1, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFragment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->fragment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->query:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeparator()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->separator:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final newBuilder()Lcoil3/Uri$Builder;
    .locals 7

    .line 1
    new-instance v0, Lcoil3/Uri$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil3/Uri;->authority:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcoil3/Uri;->query:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcoil3/Uri;->fragment:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcoil3/Uri;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Lcoil3/Uri$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.class public final Lcoil3/Uri$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authority:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/Uri$Builder;->scheme:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/Uri$Builder;->authority:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/Uri$Builder;->path:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/Uri$Builder;->query:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/Uri$Builder;->fragment:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/Uri$Builder;->separator:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final authority(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final build()Lcoil3/Uri;
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/Uri$Builder;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/Uri$Builder;->authority:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil3/Uri$Builder;->path:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil3/Uri$Builder;->query:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcoil3/Uri$Builder;->fragment:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcoil3/Uri$Builder;->separator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcoil3/UriKt;->Uri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final fragment(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->fragment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final path(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final query(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->query:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final scheme(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final separator(Ljava/lang/String;)Lcoil3/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/Uri$Builder;->separator:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

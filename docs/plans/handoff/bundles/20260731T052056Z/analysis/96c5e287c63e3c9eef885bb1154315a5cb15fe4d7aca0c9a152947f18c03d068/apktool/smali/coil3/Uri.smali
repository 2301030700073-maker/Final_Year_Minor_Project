.class public final Lcoil3/Uri;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final authority:Ljava/lang/String;

.field public final data:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final scheme:Ljava/lang/String;

.field public final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcoil3/Uri;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lcoil3/Uri;

    .line 9
    .line 10
    iget-object p1, p1, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final hashCode()I
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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

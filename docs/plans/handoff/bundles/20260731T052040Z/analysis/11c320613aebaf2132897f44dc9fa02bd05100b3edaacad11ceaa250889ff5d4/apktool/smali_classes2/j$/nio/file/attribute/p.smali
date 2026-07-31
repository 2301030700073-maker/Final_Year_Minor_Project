.class public final synthetic Lj$/nio/file/attribute/p;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/q;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/attribute/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/nio/file/attribute/p;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/nio/file/attribute/p;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final synthetic getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/nio/file/attribute/q;->getOwner()Lj$/nio/file/attribute/z;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/nio/file/attribute/y;->a(Lj$/nio/file/attribute/z;)Ljava/nio/file/attribute/UserPrincipal;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/nio/file/attribute/n;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/p;->a:Lj$/nio/file/attribute/q;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/attribute/x;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/z;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lj$/nio/file/attribute/q;->b(Lj$/nio/file/attribute/z;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

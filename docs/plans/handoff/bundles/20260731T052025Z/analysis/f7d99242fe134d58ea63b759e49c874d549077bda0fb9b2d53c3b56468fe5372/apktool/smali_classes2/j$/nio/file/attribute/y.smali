.class public final synthetic Lj$/nio/file/attribute/y;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/nio/file/attribute/UserPrincipal;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/z;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/attribute/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/z;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/x;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/nio/file/attribute/x;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/UserPrincipal;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    instance-of v0, p0, Lj$/nio/file/attribute/s;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p0, Lj$/nio/file/attribute/s;

    .line 19
    .line 20
    iget-object p0, p0, Lj$/nio/file/attribute/s;->a:Ljava/nio/file/attribute/GroupPrincipal;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance v0, Lj$/nio/file/attribute/y;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lj$/nio/file/attribute/y;-><init>(Lj$/nio/file/attribute/z;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/nio/file/attribute/y;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/nio/file/attribute/y;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

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

.method public final synthetic getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

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

.method public final synthetic implies(Ljavax/security/auth/Subject;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/security/Principal;->implies(Ljavax/security/auth/Subject;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

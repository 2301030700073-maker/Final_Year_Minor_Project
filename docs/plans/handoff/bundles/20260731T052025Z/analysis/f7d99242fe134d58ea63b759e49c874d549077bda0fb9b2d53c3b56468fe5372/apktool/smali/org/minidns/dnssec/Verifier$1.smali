.class public final Lorg/minidns/dnssec/Verifier$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic val$offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/minidns/dnssec/Verifier$1;->val$offset:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    check-cast p2, [B

    .line 4
    .line 5
    iget p0, p0, Lorg/minidns/dnssec/Verifier$1;->val$offset:I

    .line 6
    .line 7
    :goto_0
    array-length v0, p1

    .line 8
    if-ge p0, v0, :cond_1

    .line 9
    .line 10
    array-length v0, p2

    .line 11
    if-ge p0, v0, :cond_1

    .line 12
    .line 13
    aget-byte v0, p1, p0

    .line 14
    .line 15
    aget-byte v1, p2, p0

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    and-int/lit16 p0, v0, 0xff

    .line 20
    .line 21
    and-int/lit16 p1, v1, 0xff

    .line 22
    .line 23
    :goto_1
    sub-int/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    array-length p0, p1

    .line 29
    array-length p1, p2

    .line 30
    goto :goto_1
.end method

.class public final Lj$/util/concurrent/r;
.super Lj$/util/concurrent/l;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public e:Lj$/util/concurrent/r;

.field public f:Lj$/util/concurrent/r;

.field public g:Lj$/util/concurrent/r;

.field public h:Lj$/util/concurrent/r;

.field public i:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/l;Lj$/util/concurrent/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/l;)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Lj$/util/concurrent/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;
    .locals 4

    .line 1
    if-eqz p2, :cond_d

    .line 2
    .line 3
    :cond_0
    iget-object v0, p0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    .line 4
    .line 5
    iget-object v1, p0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    .line 6
    .line 7
    iget v2, p0, Lj$/util/concurrent/l;->a:I

    .line 8
    .line 9
    if-le v2, p1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    if-ge v2, p1, :cond_2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p0, Lj$/util/concurrent/l;->b:Ljava/lang/Object;

    .line 16
    .line 17
    if-eq v2, p2, :cond_c

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    goto :goto_5

    .line 28
    :cond_3
    if-nez v0, :cond_4

    .line 29
    .line 30
    :goto_0
    move-object p0, v1

    .line 31
    goto :goto_4

    .line 32
    :cond_4
    if-nez v1, :cond_6

    .line 33
    .line 34
    :cond_5
    :goto_1
    move-object p0, v0

    .line 35
    goto :goto_4

    .line 36
    :cond_6
    if-nez p3, :cond_7

    .line 37
    .line 38
    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->c(Ljava/lang/Object;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-eqz p3, :cond_b

    .line 43
    .line 44
    :cond_7
    sget p0, Lj$/util/concurrent/ConcurrentHashMap;->g:I

    .line 45
    .line 46
    if-eqz v2, :cond_9

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eq p0, p3, :cond_8

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_8
    move-object p0, p2

    .line 56
    check-cast p0, Ljava/lang/Comparable;

    .line 57
    .line 58
    invoke-interface {p0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_3

    .line 63
    :cond_9
    :goto_2
    const/4 p0, 0x0

    .line 64
    :goto_3
    if-eqz p0, :cond_b

    .line 65
    .line 66
    if-gez p0, :cond_a

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_a
    move-object v0, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_b
    invoke-virtual {v1, p1, p2, p3}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    return-object p0

    .line 78
    :goto_4
    if-nez p0, :cond_0

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_c
    :goto_5
    return-object p0

    .line 82
    :cond_d
    :goto_6
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

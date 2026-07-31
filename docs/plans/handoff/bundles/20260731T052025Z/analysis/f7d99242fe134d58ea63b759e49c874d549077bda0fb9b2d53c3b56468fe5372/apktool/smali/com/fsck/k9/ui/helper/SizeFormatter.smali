.class public final Lcom/fsck/k9/ui/helper/SizeFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/helper/SizeFormatter;->resources:Landroid/content/res/Resources;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final formatSize(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/32 v0, 0x3b9a06b0

    .line 2
    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/helper/SizeFormatter;->resources:Landroid/content/res/Resources;

    .line 9
    .line 10
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const-wide/32 v4, 0xf4240

    .line 15
    .line 16
    .line 17
    div-long/2addr p1, v4

    .line 18
    long-to-float p1, p1

    .line 19
    div-float/2addr p1, v3

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-array p2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, p2, v1

    .line 27
    .line 28
    const p1, 0x7f1205ed

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    const-wide/32 v4, 0xf420e

    .line 40
    .line 41
    .line 42
    cmp-long v0, p1, v4

    .line 43
    .line 44
    const-wide/16 v4, 0x3e8

    .line 45
    .line 46
    if-ltz v0, :cond_1

    .line 47
    .line 48
    div-long/2addr p1, v4

    .line 49
    long-to-float p1, p1

    .line 50
    div-float/2addr p1, v3

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-array p2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, p2, v1

    .line 58
    .line 59
    const p1, 0x7f1205ef

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_1
    cmp-long v0, p1, v4

    .line 71
    .line 72
    if-ltz v0, :cond_2

    .line 73
    .line 74
    long-to-float p1, p1

    .line 75
    div-float/2addr p1, v3

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-array p2, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p1, p2, v1

    .line 83
    .line 84
    const p1, 0x7f1205ee

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-array p2, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object p1, p2, v1

    .line 102
    .line 103
    const p1, 0x7f1205ec

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    return-object p0
.end method

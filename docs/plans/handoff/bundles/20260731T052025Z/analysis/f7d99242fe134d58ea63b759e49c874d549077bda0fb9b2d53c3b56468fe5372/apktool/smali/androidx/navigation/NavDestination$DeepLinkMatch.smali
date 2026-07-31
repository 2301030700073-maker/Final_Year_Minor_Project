.class public final Landroidx/navigation/NavDestination$DeepLinkMatch;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final destination:Landroidx/navigation/NavDestination;

.field public final hasMatchingAction:Z

.field public final isExactDeepLink:Z

.field public final matchingArgs:Landroid/os/Bundle;

.field public final matchingPathSegments:I

.field public final mimeTypeMatchLevel:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    .line 9
    .line 10
    iput p4, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    .line 13
    .line 14
    iput p6, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    .line 5
    .line 6
    iget-boolean v1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    .line 7
    .line 8
    iget-object v2, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iget-boolean v4, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v5, -0x1

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v5

    .line 24
    :cond_1
    iget v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    .line 25
    .line 26
    iget v4, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    .line 27
    .line 28
    sub-int/2addr v1, v4

    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    return v3

    .line 32
    :cond_2
    if-gez v1, :cond_3

    .line 33
    .line 34
    return v5

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v3

    .line 42
    :cond_4
    if-nez v1, :cond_5

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    return v5

    .line 47
    :cond_5
    if-eqz v1, :cond_7

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sub-int/2addr v1, v2

    .line 64
    if-lez v1, :cond_6

    .line 65
    .line 66
    return v3

    .line 67
    :cond_6
    if-gez v1, :cond_7

    .line 68
    .line 69
    return v5

    .line 70
    :cond_7
    iget-boolean v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    .line 71
    .line 72
    if-eqz v1, :cond_8

    .line 73
    .line 74
    if-nez v0, :cond_8

    .line 75
    .line 76
    return v3

    .line 77
    :cond_8
    if-nez v1, :cond_9

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    return v5

    .line 82
    :cond_9
    iget p0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    .line 83
    .line 84
    iget p1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    .line 85
    .line 86
    sub-int/2addr p0, p1

    .line 87
    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 88
    check-cast p1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result p0

    return p0
.end method

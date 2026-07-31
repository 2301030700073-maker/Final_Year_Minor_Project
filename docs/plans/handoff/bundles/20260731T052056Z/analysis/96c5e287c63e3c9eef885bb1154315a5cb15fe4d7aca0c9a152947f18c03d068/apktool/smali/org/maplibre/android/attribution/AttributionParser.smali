.class public final Lorg/maplibre/android/attribution/AttributionParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final attributionData:Ljava/lang/String;

.field public final attributions:Ljava/util/LinkedHashSet;

.field public final withCopyrightSign:Z

.field public final withImproveMap:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributionData:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p2, p0, Lorg/maplibre/android/attribution/AttributionParser;->withImproveMap:Z

    .line 14
    .line 15
    iput-boolean p3, p0, Lorg/maplibre/android/attribution/AttributionParser;->withCopyrightSign:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final parseAttributions()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributionData:Ljava/lang/String;

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-class v3, Landroid/text/style/URLSpan;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 32
    .line 33
    array-length v3, v1

    .line 34
    move v4, v2

    .line 35
    :goto_1
    if-ge v4, v3, :cond_4

    .line 36
    .line 37
    aget-object v5, v1, v4

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-boolean v7, p0, Lorg/maplibre/android/attribution/AttributionParser;->withImproveMap:Z

    .line 44
    .line 45
    if-nez v7, :cond_1

    .line 46
    .line 47
    sget-object v7, Lorg/maplibre/android/attribution/Attribution;->IMPROVE_MAP_URLS:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_3

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int v8, v5, v7

    .line 64
    .line 65
    new-array v8, v8, [C

    .line 66
    .line 67
    invoke-virtual {v0, v7, v5, v8, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 68
    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-boolean v7, p0, Lorg/maplibre/android/attribution/AttributionParser;->withCopyrightSign:Z

    .line 75
    .line 76
    if-nez v7, :cond_2

    .line 77
    .line 78
    const-string/jumbo v7, "\u00a9 "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    const/4 v7, 0x2

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :cond_2
    new-instance v7, Lorg/maplibre/android/attribution/Attribution;

    .line 97
    .line 98
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v5, v7, Lorg/maplibre/android/attribution/Attribution;->title:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v6, v7, Lorg/maplibre/android/attribution/Attribution;->url:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    return-void
.end method

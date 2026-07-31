.class public final Lorg/wikipedia/gallery/ImageLicense;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/gallery/ImageLicense$Companion;


# instance fields
.field public licenseName:Ljava/lang/String;

.field public licenseShortName:Ljava/lang/String;

.field public licenseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ImageLicense$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ImageLicense;->Companion:Lorg/wikipedia/gallery/ImageLicense$Companion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final licenseIcon()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "pd"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_5

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string v1, "-"

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    invoke-static {p0, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "ccbysa"

    .line 30
    .line 31
    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_4

    .line 36
    .line 37
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "cc"

    .line 49
    .line 50
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const p0, 0x7f080194

    .line 64
    .line 65
    .line 66
    return p0

    .line 67
    :cond_3
    :goto_0
    const p0, 0x7f080193

    .line 68
    .line 69
    .line 70
    return p0

    .line 71
    :cond_4
    :goto_1
    const p0, 0x7f080192

    .line 72
    .line 73
    .line 74
    return p0

    .line 75
    :cond_5
    :goto_2
    const p0, 0x7f080195

    .line 76
    .line 77
    .line 78
    return p0
.end method

.class public final Lorg/wikipedia/feed/image/FeaturedImage;
.super Lorg/wikipedia/gallery/GalleryItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/image/FeaturedImage$Companion;


# instance fields
.field public final image:Lorg/wikipedia/gallery/ImageInfo;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/image/FeaturedImage$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/image/FeaturedImage;->Companion:Lorg/wikipedia/feed/image/FeaturedImage$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x1b

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x12

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    aput-object v3, v1, v2

    .line 53
    .line 54
    const/16 v2, 0x9

    .line 55
    .line 56
    aput-object v3, v1, v2

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    aput-object v3, v1, v2

    .line 61
    .line 62
    const/16 v2, 0xb

    .line 63
    .line 64
    aput-object v0, v1, v2

    .line 65
    .line 66
    const/16 v0, 0xc

    .line 67
    .line 68
    aput-object v3, v1, v0

    .line 69
    .line 70
    const/16 v0, 0xd

    .line 71
    .line 72
    aput-object v3, v1, v0

    .line 73
    .line 74
    const/16 v0, 0xe

    .line 75
    .line 76
    aput-object v3, v1, v0

    .line 77
    .line 78
    const/16 v0, 0xf

    .line 79
    .line 80
    aput-object v3, v1, v0

    .line 81
    .line 82
    const/16 v0, 0x10

    .line 83
    .line 84
    aput-object v3, v1, v0

    .line 85
    .line 86
    const/16 v0, 0x11

    .line 87
    .line 88
    aput-object v3, v1, v0

    .line 89
    .line 90
    sput-object v1, Lorg/wikipedia/feed/image/FeaturedImage;->$childSerializers:[Lkotlin/Lazy;

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/lang/String;DLjava/lang/String;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/TextInfo;Ljava/util/List;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/GalleryItem$Titles;Lorg/wikipedia/gallery/ArtistInfo;Lorg/wikipedia/gallery/ImageLicense;Ljava/lang/String;Lorg/wikipedia/gallery/ImageInfo;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p18}, Lorg/wikipedia/gallery/GalleryItem;-><init>(IILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/lang/String;DLjava/lang/String;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/TextInfo;Ljava/util/List;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/GalleryItem$Titles;Lorg/wikipedia/gallery/ArtistInfo;Lorg/wikipedia/gallery/ImageLicense;)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, 0x10000

    .line 5
    .line 6
    and-int/2addr p2, p1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    :goto_0
    iput-object p2, p0, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object/from16 p2, p19

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    const/high16 p3, 0x20000

    .line 18
    .line 19
    and-int/2addr p1, p3

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Lorg/wikipedia/gallery/ImageInfo;

    .line 23
    .line 24
    invoke-direct {p1}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_2
    iput-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImage;->image:Lorg/wikipedia/gallery/ImageInfo;

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    move-object/from16 p1, p20

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_3
    new-instance p3, Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 34
    .line 35
    sget-object p4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 36
    .line 37
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-direct {p3, p2, p4, p2}, Lorg/wikipedia/gallery/GalleryItem$Titles;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 47
    .line 48
    iget-object p1, p1, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final toPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    const-string v2, "https://commons.wikimedia.org/"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

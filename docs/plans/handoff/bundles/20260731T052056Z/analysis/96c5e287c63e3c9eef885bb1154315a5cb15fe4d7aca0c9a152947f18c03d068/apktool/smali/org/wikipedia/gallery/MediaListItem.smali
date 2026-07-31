.class public final Lorg/wikipedia/gallery/MediaListItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/gallery/MediaListItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/gallery/MediaListItem$Companion;


# instance fields
.field public final caption:Lorg/wikipedia/gallery/TextInfo;

.field public final sectionId:I

.field public final showInGallery:Z

.field public final srcSets:Ljava/util/List;

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/MediaListItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/MediaListItem;->Companion:Lorg/wikipedia/gallery/MediaListItem$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/page/PageTitle$Creator;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageTitle$Creator;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/gallery/MediaListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/16 v3, 0x11

    .line 21
    .line 22
    invoke-direct {v2, v3}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x6

    .line 30
    new-array v2, v2, [Lkotlin/Lazy;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v4, v2, v3

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    aput-object v4, v2, v1

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    aput-object v4, v2, v1

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    aput-object v4, v2, v1

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    aput-object v0, v2, v1

    .line 49
    .line 50
    sput-object v2, Lorg/wikipedia/gallery/MediaListItem;->$childSerializers:[Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/TextInfo;ZILjava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lorg/wikipedia/gallery/MediaListItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/gallery/MediaListItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    iput-boolean p3, p0, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-boolean p5, p0, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    .line 43
    .line 44
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    iput p3, p0, Lorg/wikipedia/gallery/MediaListItem;->sectionId:I

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput p6, p0, Lorg/wikipedia/gallery/MediaListItem;->sectionId:I

    .line 52
    .line 53
    :goto_4
    and-int/lit8 p1, p1, 0x20

    .line 54
    .line 55
    if-nez p1, :cond_5

    .line 56
    .line 57
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 58
    .line 59
    iput-object p1, p0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/TextInfo;ZILjava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/wikipedia/gallery/MediaListItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 69
    iput-boolean p4, p0, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    .line 70
    iput p5, p0, Lorg/wikipedia/gallery/MediaListItem;->sectionId:I

    .line 71
    iput-object p6, p0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lorg/wikipedia/gallery/MediaListItem;->sectionId:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

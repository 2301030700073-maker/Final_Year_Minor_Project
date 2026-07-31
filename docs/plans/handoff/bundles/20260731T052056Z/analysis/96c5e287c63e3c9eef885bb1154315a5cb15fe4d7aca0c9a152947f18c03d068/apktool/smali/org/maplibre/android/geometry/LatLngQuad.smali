.class public final Lorg/maplibre/android/geometry/LatLngQuad;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\t\u001a\u0004\u0008\u000c\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\t\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/maplibre/android/geometry/LatLngQuad;",
        "Landroid/os/Parcelable;",
        "Lorg/maplibre/android/geometry/LatLng;",
        "topLeft",
        "topRight",
        "bottomRight",
        "bottomLeft",
        "<init>",
        "(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V",
        "Lorg/maplibre/android/geometry/LatLng;",
        "getTopLeft",
        "()Lorg/maplibre/android/geometry/LatLng;",
        "getTopRight",
        "getBottomRight",
        "getBottomLeft",
        "MapLibreAndroid_vulkanRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/LatLngQuad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bottomLeft:Lorg/maplibre/android/geometry/LatLng;

.field private final bottomRight:Lorg/maplibre/android/geometry/LatLng;

.field private final topLeft:Lorg/maplibre/android/geometry/LatLng;

.field private final topRight:Lorg/maplibre/android/geometry/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/maplibre/android/geometry/LatLngQuad;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    .line 21
    .line 22
    iput-object p4, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 23
    .line 24
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lorg/maplibre/android/geometry/LatLngQuad;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast p1, Lorg/maplibre/android/geometry/LatLngQuad;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 29
    .line 30
    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    .line 40
    .line 41
    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    .line 42
    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    .line 51
    .line 52
    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    .line 53
    .line 54
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    return v2

    .line 61
    :cond_5
    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 62
    .line 63
    iget-object p1, p1, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 64
    .line 65
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_6

    .line 70
    .line 71
    return v2

    .line 72
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

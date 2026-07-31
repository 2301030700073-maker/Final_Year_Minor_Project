.class public final Lorg/wikipedia/dataclient/page/NearbyPage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

.field public final latitude:D

.field public final longitude:D

.field public final pageId:I

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(ILorg/wikipedia/page/PageTitle;DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->pageId:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->latitude:D

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->longitude:D

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getLocation()Landroid/location/Location;
    .locals 3

    .line 1
    new-instance v0, Landroid/location/Location;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->latitude:D

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lorg/wikipedia/dataclient/page/NearbyPage;->longitude:D

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

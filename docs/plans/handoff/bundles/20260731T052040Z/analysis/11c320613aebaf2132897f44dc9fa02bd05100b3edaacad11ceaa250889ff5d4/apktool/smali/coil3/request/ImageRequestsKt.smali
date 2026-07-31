.class public abstract Lcoil3/request/ImageRequestsKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final addLastModifiedToFileCacheKeyKey:Lcoil3/Extras$Key;

.field public static final allowConversionToBitmapKey:Lcoil3/Extras$Key;

.field public static final maxBitmapSizeKey:Lcoil3/Extras$Key;

.field public static final transformationsKey:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 9
    .line 10
    new-instance v0, Lcoil3/Extras$Key;

    .line 11
    .line 12
    new-instance v1, Lcoil3/size/Size;

    .line 13
    .line 14
    new-instance v2, Lcoil3/size/Dimension$Pixels;

    .line 15
    .line 16
    const/16 v3, 0x1000

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcoil3/size/Dimension$Pixels;

    .line 22
    .line 23
    invoke-direct {v4, v3}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v4}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 33
    .line 34
    new-instance v0, Lcoil3/Extras$Key;

    .line 35
    .line 36
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcoil3/request/ImageRequestsKt;->addLastModifiedToFileCacheKeyKey:Lcoil3/Extras$Key;

    .line 42
    .line 43
    new-instance v0, Lcoil3/Extras$Key;

    .line 44
    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcoil3/request/ImageRequestsKt;->allowConversionToBitmapKey:Lcoil3/Extras$Key;

    .line 51
    .line 52
    return-void
.end method

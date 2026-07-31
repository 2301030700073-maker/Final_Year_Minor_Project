.class public abstract Lcoil3/gif/ImageRequestsKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final animatedTransformationKey:Lcoil3/Extras$Key;

.field public static final animationEndCallbackKey:Lcoil3/Extras$Key;

.field public static final animationStartCallbackKey:Lcoil3/Extras$Key;

.field public static final repeatCountKey:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 12
    .line 13
    new-instance v0, Lcoil3/Extras$Key;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 20
    .line 21
    new-instance v0, Lcoil3/Extras$Key;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 27
    .line 28
    new-instance v0, Lcoil3/Extras$Key;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 34
    .line 35
    return-void
.end method

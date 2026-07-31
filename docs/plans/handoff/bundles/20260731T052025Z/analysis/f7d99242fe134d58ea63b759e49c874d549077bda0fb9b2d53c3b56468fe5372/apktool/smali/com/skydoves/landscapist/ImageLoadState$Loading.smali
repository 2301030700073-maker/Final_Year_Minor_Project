.class public final Lcom/skydoves/landscapist/ImageLoadState$Loading;
.super Lcom/skydoves/landscapist/ImageLoadState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/landscapist/ImageLoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/skydoves/landscapist/ImageLoadState$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/skydoves/landscapist/ImageLoadState$Loading;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/skydoves/landscapist/ImageLoadState$Loading;->INSTANCE:Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/skydoves/landscapist/ImageLoadState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    const p0, -0x73a7dc2b

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Loading"

    .line 2
    .line 3
    return-object p0
.end method

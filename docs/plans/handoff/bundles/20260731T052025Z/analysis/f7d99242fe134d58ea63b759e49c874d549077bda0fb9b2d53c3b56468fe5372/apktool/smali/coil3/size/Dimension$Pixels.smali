.class public final Lcoil3/size/Dimension$Pixels;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/size/Dimension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/size/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pixels"
.end annotation


# instance fields
.field private final px:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic box-impl(I)Lcoil3/size/Dimension$Pixels;
    .locals 1

    .line 1
    new-instance v0, Lcoil3/size/Dimension$Pixels;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    const-string p0, "px must be > 0."

    .line 5
    .line 6
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcoil3/size/Dimension$Pixels;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcoil3/size/Dimension$Pixels;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Pixels(px="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil3/size/Dimension$Pixels;->equals-impl(ILjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPx()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 2
    .line 3
    invoke-static {p0}, Lcoil3/size/Dimension$Pixels;->hashCode-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 2
    .line 3
    invoke-static {p0}, Lcoil3/size/Dimension$Pixels;->toString-impl(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 2
    .line 3
    return p0
.end method

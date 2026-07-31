.class public final Landroidx/glance/layout/Alignment;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Center:Landroidx/glance/layout/Alignment;

.field public static final CenterEnd:Landroidx/glance/layout/Alignment;

.field public static final CenterStart:Landroidx/glance/layout/Alignment;

.field public static final TopStart:Landroidx/glance/layout/Alignment;


# instance fields
.field public final horizontal:I

.field public final vertical:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/layout/Alignment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/glance/layout/Alignment;->TopStart:Landroidx/glance/layout/Alignment;

    .line 8
    .line 9
    new-instance v0, Landroidx/glance/layout/Alignment;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/glance/layout/Alignment;->CenterStart:Landroidx/glance/layout/Alignment;

    .line 16
    .line 17
    new-instance v0, Landroidx/glance/layout/Alignment;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/glance/layout/Alignment;->Center:Landroidx/glance/layout/Alignment;

    .line 23
    .line 24
    new-instance v0, Landroidx/glance/layout/Alignment;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/glance/layout/Alignment;->CenterEnd:Landroidx/glance/layout/Alignment;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
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
    const-class v2, Landroidx/glance/layout/Alignment;

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
    check-cast p1, Landroidx/glance/layout/Alignment;

    .line 27
    .line 28
    iget v1, p0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 29
    .line 30
    iget v3, p1, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 31
    .line 32
    if-ne v1, v3, :cond_3

    .line 33
    .line 34
    iget p0, p0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 35
    .line 36
    iget p1, p1, Landroidx/glance/layout/Alignment;->vertical:I

    .line 37
    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    return v0

    .line 41
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Alignment(horizontal="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/glance/layout/Alignment$Horizontal;->toString-impl(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", vertical="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget p0, p0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/glance/layout/Alignment$Vertical;->toString-impl(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 p0, 0x29

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

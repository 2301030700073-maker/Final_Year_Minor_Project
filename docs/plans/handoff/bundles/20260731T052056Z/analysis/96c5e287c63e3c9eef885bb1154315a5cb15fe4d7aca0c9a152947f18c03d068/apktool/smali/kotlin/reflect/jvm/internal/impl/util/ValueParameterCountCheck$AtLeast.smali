.class public final Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;
.super Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final n:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-string v0, "must have at least "

    .line 2
    .line 3
    const-string v1, " value parameter"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le p1, v1, :cond_0

    .line 11
    .line 12
    const-string v2, "s"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, ""

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;->n:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final check(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;->n:I

    .line 10
    .line 11
    if-lt p1, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

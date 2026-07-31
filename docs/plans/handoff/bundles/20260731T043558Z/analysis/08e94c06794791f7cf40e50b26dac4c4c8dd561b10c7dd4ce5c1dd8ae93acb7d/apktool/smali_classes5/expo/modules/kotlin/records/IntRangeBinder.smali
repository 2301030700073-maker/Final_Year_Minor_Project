.class public final Lexpo/modules/kotlin/records/IntRangeBinder;
.super Ljava/lang/Object;
.source "ValidationBinder.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/ValidationBinder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/IntRangeBinder;",
        "Lexpo/modules/kotlin/records/ValidationBinder;",
        "<init>",
        "()V",
        "bind",
        "Lexpo/modules/kotlin/records/FieldValidator;",
        "annotation",
        "",
        "fieldType",
        "Lkotlin/reflect/KType;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/annotation/Annotation;Lkotlin/reflect/KType;)Lexpo/modules/kotlin/records/FieldValidator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lexpo/modules/kotlin/records/FieldValidator<",
            "*>;"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast p1, Lexpo/modules/kotlin/records/IntRange;

    .line 19
    new-instance p2, Lexpo/modules/kotlin/records/NumericRangeValidator;

    .line 20
    invoke-interface {p1}, Lexpo/modules/kotlin/records/IntRange;->from()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 21
    invoke-interface {p1}, Lexpo/modules/kotlin/records/IntRange;->to()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 22
    invoke-interface {p1}, Lexpo/modules/kotlin/records/IntRange;->fromInclusive()Z

    move-result v2

    .line 23
    invoke-interface {p1}, Lexpo/modules/kotlin/records/IntRange;->toInclusive()Z

    move-result p1

    .line 19
    invoke-direct {p2, v0, v1, v2, p1}, Lexpo/modules/kotlin/records/NumericRangeValidator;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    check-cast p2, Lexpo/modules/kotlin/records/FieldValidator;

    return-object p2
.end method

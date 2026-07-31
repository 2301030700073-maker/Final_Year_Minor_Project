.class public final Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;
.super Lexpo/modules/kotlin/types/NullAwareTypeConverter;
.source "SharedObjectTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "*>;>",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00022\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter;",
        "type",
        "Lkotlin/reflect/KType;",
        "<init>",
        "(Lkotlin/reflect/KType;)V",
        "getType",
        "()Lkotlin/reflect/KType;",
        "sharedObjectTypeConverter",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;",
        "sharedRefType",
        "getSharedRefType",
        "sharedRefType$delegate",
        "Lkotlin/Lazy;",
        "convertNonOptional",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "checkInnerRef",
        "sharedRef",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
        "",
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


# instance fields
.field private final sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sharedRefType$delegate:Lkotlin/Lazy;

.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public static synthetic $r8$lambda$i1BHejnEncpblH0XL_6HpUY65Os(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)Lkotlin/reflect/KType;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedRefType_delegate$lambda$1(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/NullAwareTypeConverter;-><init>(Z)V

    .line 40
    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    .line 42
    new-instance v0, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    iput-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    .line 44
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedRefType$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkInnerRef(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;)",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getSharedRefType()Lkotlin/reflect/KType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lkotlin/reflect/KClass;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KClass;

    :cond_2
    if-nez v2, :cond_3

    return-object p1

    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/reflect/full/KClasses;->isSuperclassOf(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 85
    :cond_4
    new-instance v0, Lexpo/modules/kotlin/exception/IncorrectRefTypeException;

    iget-object v1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lexpo/modules/kotlin/exception/IncorrectRefTypeException;-><init>(Lkotlin/reflect/KType;Ljava/lang/Class;)V

    throw v0
.end method

.method private static final sharedRefType_delegate$lambda$1(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)Lkotlin/reflect/KType;
    .locals 4

    .line 45
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 46
    :goto_0
    iget-object v1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    :goto_1
    if-eqz v0, :cond_8

    .line 48
    const-class v3, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 52
    :goto_2
    sget-object v1, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    .line 57
    :cond_4
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getSharedRefType()Lkotlin/reflect/KType;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " type should contain the type of the inner ref"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSupertypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/KType;

    if-eqz v1, :cond_6

    .line 61
    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    instance-of v3, v0, Lkotlin/reflect/KClass;

    if-eqz v3, :cond_7

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    return-object v2
.end method


# virtual methods
.method public convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->checkInnerRef(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type T of expo.modules.kotlin.sharedobjects.SharedRefTypeConverter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/InvalidSharedObjectTypeException;

    iget-object p2, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/exception/InvalidSharedObjectTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw p1
.end method

.method public bridge synthetic convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;

    move-result-object p1

    return-object p1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 1

    .line 88
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedRefType()Lkotlin/reflect/KType;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedRefType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->isTrivial()Z

    move-result v0

    return v0
.end method

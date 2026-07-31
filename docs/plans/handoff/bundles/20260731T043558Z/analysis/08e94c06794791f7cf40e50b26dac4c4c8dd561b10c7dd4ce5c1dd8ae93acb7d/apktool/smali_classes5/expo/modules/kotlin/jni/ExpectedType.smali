.class public final Lexpo/modules/kotlin/jni/ExpectedType;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/ExpectedType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n12820#2,3:219\n11165#2:222\n11500#2,3:223\n37#3,2:226\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType\n*L\n112#1:219,3\n107#1:222\n107#1:223,3\n107#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001b\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001d\u0008\u0016\u0012\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0003\"\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0008\u0010\r\u001a\u00020\u000cH\u0007J\u0015\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003H\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0004H\u0007J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u0018\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "",
        "innerPossibleTypes",
        "",
        "Lexpo/modules/kotlin/jni/SingleType;",
        "<init>",
        "([Lexpo/modules/kotlin/jni/SingleType;)V",
        "expectedTypes",
        "Lexpo/modules/kotlin/jni/CppType;",
        "([Lexpo/modules/kotlin/jni/CppType;)V",
        "[Lexpo/modules/kotlin/jni/SingleType;",
        "innerCombinedTypes",
        "",
        "getCombinedTypes",
        "getPossibleTypes",
        "()[Lexpo/modules/kotlin/jni/SingleType;",
        "getFirstType",
        "hashCode",
        "equals",
        "",
        "other",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;


# instance fields
.field private final innerCombinedTypes:I

.field private final innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    return-void
.end method

.method public varargs constructor <init>([Lexpo/modules/kotlin/jni/CppType;)V
    .locals 8

    const-string v0, "expectedTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 223
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 107
    new-instance v5, Lexpo/modules/kotlin/jni/SingleType;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 222
    check-cast v0, Ljava/util/Collection;

    .line 227
    new-array p1, v2, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 107
    check-cast p1, [Lexpo/modules/kotlin/jni/SingleType;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-void
.end method

.method public varargs constructor <init>([Lexpo/modules/kotlin/jni/SingleType;)V
    .locals 4

    const-string v0, "innerPossibleTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 112
    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getCppType()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    return-void
.end method

.method public static final synthetic access$getInnerPossibleTypes$p(Lexpo/modules/kotlin/jni/ExpectedType;)[Lexpo/modules/kotlin/jni/SingleType;
    .locals 0

    .line 103
    iget-object p0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 133
    instance-of v0, p1, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    array-length v2, v0

    check-cast p1, Lexpo/modules/kotlin/jni/ExpectedType;

    iget-object v3, p1, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    return v1

    .line 136
    :cond_1
    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 137
    iget-object v3, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v3

    iget-object v4, p1, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v1

    .line 140
    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getFirstParameterType()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v3

    iget-object v4, p1, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lexpo/modules/kotlin/jni/SingleType;->getFirstParameterType()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final getCombinedTypes()I
    .locals 1

    .line 116
    iget v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    return v0
.end method

.method public final getFirstType()Lexpo/modules/kotlin/jni/SingleType;
    .locals 1

    .line 124
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/jni/SingleType;

    return-object v0
.end method

.method public final getPossibleTypes()[Lexpo/modules/kotlin/jni/SingleType;
    .locals 1

    .line 120
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 127
    iget v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v1, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

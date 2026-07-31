.class public final Lexpo/modules/kotlin/jni/SingleType;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/SingleType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/SingleType;",
        "",
        "expectedCppType",
        "Lexpo/modules/kotlin/jni/CppType;",
        "parameterTypes",
        "",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "<init>",
        "(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V",
        "getExpectedCppType$expo_modules_core_release",
        "()Lexpo/modules/kotlin/jni/CppType;",
        "[Lexpo/modules/kotlin/jni/ExpectedType;",
        "getCppType",
        "",
        "getFirstParameterType",
        "getSecondParameterType",
        "equals",
        "",
        "other",
        "hashCode",
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
.field public static final Companion:Lexpo/modules/kotlin/jni/SingleType$Companion;


# instance fields
.field private final expectedCppType:Lexpo/modules/kotlin/jni/CppType;

.field private final parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/SingleType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/SingleType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/SingleType;->Companion:Lexpo/modules/kotlin/jni/SingleType$Companion;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V
    .locals 1

    const-string v0, "expectedCppType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    .line 17
    iput-object p2, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    return-void
.end method

.method public static final synthetic access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 0

    .line 11
    iget-object p0, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 46
    :cond_2
    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.jni.SingleType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/kotlin/jni/SingleType;

    .line 48
    iget-object v1, p0, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    iget-object v3, p1, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    if-eq v1, v3, :cond_3

    return v2

    .line 51
    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    iget-object p1, p1, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCppType()I
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/CppType;->getValue()I

    move-result v0

    return v0
.end method

.method public final getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    return-object v0
.end method

.method public final getFirstParameterType()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 29
    iget-object v0, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSecondParameterType()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Lexpo/modules/kotlin/jni/SingleType;->expectedCppType:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/CppType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Lexpo/modules/kotlin/jni/SingleType;->parameterTypes:[Lexpo/modules/kotlin/jni/ExpectedType;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

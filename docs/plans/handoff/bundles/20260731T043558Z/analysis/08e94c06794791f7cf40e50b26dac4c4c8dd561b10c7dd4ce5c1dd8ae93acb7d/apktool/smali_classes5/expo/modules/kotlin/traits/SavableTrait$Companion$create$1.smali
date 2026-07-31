.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;
.super Ljava/lang/Object;
.source "SavableTrait.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/traits/SavableTrait$Companion;->create(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/traits/SavableTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavableTrait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion$create$1\n+ 2 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n+ 3 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 5 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 6 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 7 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,58:1\n30#2,4:59\n40#2:122\n259#3:63\n262#3,3:119\n181#4,8:64\n168#4:72\n158#4,8:75\n189#4:83\n168#4:84\n158#4,8:85\n143#5,2:73\n13#6,6:93\n19#6,19:100\n11#7:99\n*S KotlinDebug\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion$create$1\n*L\n46#1:59,4\n46#1:122\n46#1:63\n46#1:119,3\n46#1:64,8\n46#1:72\n46#1:75,8\n46#1:83\n46#1:84\n46#1:85,8\n46#1:73,2\n46#1:93,6\n46#1:100,19\n46#1:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    invoke-direct {v0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 12

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lexpo/modules/kotlin/traits/SavableTrait;->Companion:Lexpo/modules/kotlin/traits/SavableTrait$Companion;

    .line 59
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    .line 61
    new-instance v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .line 63
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v1

    const/4 v3, 0x4

    .line 66
    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    .line 67
    const-class v5, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    check-cast v5, Ljava/lang/Class;

    const/4 v5, 0x2

    .line 71
    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 72
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 73
    new-instance v7, Lkotlin/Pair;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_0

    .line 72
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v6, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 75
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 76
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 78
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 76
    invoke-direct {v8, v3, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 75
    invoke-direct {v7, v8, v1}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    :cond_0
    const/4 v3, 0x0

    .line 72
    aput-object v6, v5, v3

    .line 84
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 73
    new-instance v6, Lkotlin/Pair;

    const-class v7, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    if-nez v4, :cond_1

    .line 84
    sget-object v4, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$2;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 85
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 86
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v3, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 85
    invoke-direct {v6, v7, v1}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v4, v6

    .line 84
    :cond_1
    aput-object v4, v5, v2

    .line 63
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$3;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$3;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 96
    const-class p1, Lkotlin/Unit;

    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    .line 97
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "saveAsync"

    if-eqz v2, :cond_2

    .line 100
    new-instance p1, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 102
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    new-instance p1, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 106
    :cond_3
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    new-instance p1, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 110
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    new-instance p1, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 114
    :cond_5
    const-class v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 116
    new-instance p1, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 118
    :cond_6
    new-instance p1, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {p1, v3, v5, v1}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 119
    :goto_0
    move-object v1, p1

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 120
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->invoke(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p1

    return-object p1
.end method

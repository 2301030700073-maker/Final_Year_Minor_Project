.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion;
.super Ljava/lang/Object;
.source "SavableTrait.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/traits/SavableTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavableTrait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 3 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 5 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 6 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,58:1\n259#2:59\n262#2,3:115\n181#3,8:60\n168#3:68\n158#3,8:71\n189#3:79\n168#3:80\n158#3,8:81\n143#4,2:69\n13#5,6:89\n19#5,19:96\n11#6:95\n*S KotlinDebug\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n*L\n33#1:59\n33#1:115,3\n33#1:60,8\n33#1:68\n33#1:71,8\n33#1:79\n33#1:80\n33#1:81,8\n33#1:69,2\n33#1:89,6\n33#1:96,19\n33#1:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Js\u0010\u0004\u001a\u00020\u0005\"\u0006\u0008\u0001\u0010\u0006\u0018\u0001\"\u0006\u0008\u0002\u0010\u0007\u0018\u00012\u0006\u0010\u0008\u001a\u00020\t2M\u0008\u0004\u0010\n\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u0011H\u0006\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u0011H\u0007\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0081\u0008\u00f8\u0001\u0000J1\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0014\"\u0010\u0008\u0001\u0010\u0015\u0018\u0001*\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0019H\u0086\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/traits/SavableTrait$Companion;",
        "",
        "<init>",
        "()V",
        "createImplementation",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "InputType",
        "OptionType",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "saveToFile",
        "Lkotlin/Function3;",
        "Ljava/io/File;",
        "Lkotlin/ParameterName;",
        "name",
        "file",
        "input",
        "options",
        "",
        "create",
        "Lexpo/modules/kotlin/traits/SavableTrait;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Landroid/graphics/Bitmap;",
        "klass",
        "Lkotlin/reflect/KClass;",
        "SavableBitmapOptions",
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
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lexpo/modules/kotlin/traits/SavableTrait$Companion;Lkotlin/reflect/KClass;ILjava/lang/Object;)Lexpo/modules/kotlin/traits/SavableTrait;
    .locals 0

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 43
    const-string p1, "T"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    const-string p0, "klass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p0, Lexpo/modules/kotlin/traits/SavableTrait;

    .line 45
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/traits/SavableTrait;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method


# virtual methods
.method public final synthetic create(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/traits/SavableTrait;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "Landroid/graphics/Bitmap;",
            ">;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/traits/SavableTrait<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lexpo/modules/kotlin/traits/SavableTrait;

    .line 45
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-direct {p1, v0}, Lexpo/modules/kotlin/traits/SavableTrait;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public final synthetic createImplementation(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function3;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputType:",
            "Ljava/lang/Object;",
            "OptionType:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/io/File;",
            "-TInputType;-TOptionType;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveToFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    .line 32
    new-instance v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .line 59
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v1

    const/4 v3, 0x4

    .line 62
    const-string v4, "InputType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    .line 63
    const-string v5, "OptionType"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    check-cast v6, Ljava/lang/Class;

    const/4 v6, 0x2

    .line 67
    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 68
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 69
    new-instance v8, Lkotlin/Pair;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_0

    .line 68
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v7, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 71
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 72
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 74
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 72
    invoke-direct {v9, v12, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 71
    invoke-direct {v8, v9, v1}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    :cond_0
    const/4 v4, 0x0

    .line 68
    aput-object v7, v6, v4

    .line 80
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 69
    new-instance v7, Lkotlin/Pair;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    if-nez v4, :cond_1

    .line 80
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v4, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$2;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 81
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 82
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 84
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 82
    invoke-direct {v8, v3, v11, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 81
    invoke-direct {v7, v8, v1}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v4, v7

    .line 80
    :cond_1
    aput-object v4, v6, v2

    .line 59
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;

    invoke-direct {v1, p1, p2}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 92
    const-class p1, Lkotlin/Unit;

    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    .line 93
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "saveAsync"

    if-eqz p2, :cond_2

    .line 96
    new-instance p1, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 98
    :cond_2
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 100
    new-instance p1, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 102
    :cond_3
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 104
    new-instance p1, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 106
    :cond_4
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 108
    new-instance p1, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 110
    :cond_5
    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 112
    new-instance p1, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 114
    :cond_6
    new-instance p1, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {p1, v2, v6, v1}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 115
    :goto_0
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 116
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p1

    return-object p1
.end method

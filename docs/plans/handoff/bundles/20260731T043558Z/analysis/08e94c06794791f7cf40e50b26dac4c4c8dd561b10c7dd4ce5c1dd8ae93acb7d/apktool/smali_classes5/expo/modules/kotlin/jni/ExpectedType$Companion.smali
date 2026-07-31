.class public final Lexpo/modules/kotlin/jni/ExpectedType$Companion;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/ExpectedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n10072#2:219\n10494#2,5:220\n1485#3:225\n1510#3,3:226\n1513#3,3:236\n2669#3,7:242\n381#4,7:229\n126#5:239\n153#5,2:240\n155#5:249\n37#6,2:250\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType$Companion\n*L\n207#1:219\n207#1:220,5\n208#1:225\n208#1:226,3\n208#1:236,3\n211#1:242,7\n208#1:229,7\n210#1:239\n210#1:240,2\n210#1:249\n214#1:250,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u001f\u0010\u000f\u001a\u00020\u00052\u0012\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0011\"\u00020\u0005\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/ExpectedType$Companion;",
        "",
        "<init>",
        "()V",
        "forPrimitiveArray",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "parameterType",
        "Lexpo/modules/kotlin/jni/CppType;",
        "forEnum",
        "forList",
        "forMap",
        "valueType",
        "fromKType",
        "type",
        "Lkotlin/reflect/KType;",
        "merge",
        "types",
        "",
        "([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;",
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

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEnum()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 156
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x2

    .line 157
    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 158
    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    .line 156
    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method

.method public final forList(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 162
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->LIST:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 161
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final forList(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 166
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->LIST:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 165
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final forMap(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8

    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 170
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->MAP:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 169
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final forMap(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 174
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->MAP:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 173
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 149
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->PRIMITIVE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 148
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final forPrimitiveArray(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    .line 153
    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->PRIMITIVE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 152
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v0
.end method

.method public final fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_b

    .line 181
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 182
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->LONG:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 183
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->DOUBLE:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 184
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->FLOAT:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 185
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->BOOLEAN:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 186
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v0, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v1, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v1, v5, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1

    .line 188
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_8

    .line 191
    invoke-virtual {p0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forList(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p1

    return-object p1

    .line 194
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    .line 197
    invoke-virtual {p0, v2}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forMap(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p1

    return-object p1

    .line 200
    :cond_a
    new-instance v0, Lexpo/modules/kotlin/exception/InvalidExpectedType;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/exception/InvalidExpectedType;-><init>(Lkotlin/reflect/KType;)V

    throw v0

    .line 179
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot obtain KClass from \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs merge([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 220
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 207
    invoke-static {v4}, Lexpo/modules/kotlin/jni/ExpectedType;->access$getInnerPossibleTypes$p(Lexpo/modules/kotlin/jni/ExpectedType;)[Lexpo/modules/kotlin/jni/SingleType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    .line 222
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 219
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 227
    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/jni/SingleType;

    .line 208
    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v3

    .line 229
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 228
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 232
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 236
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 211
    check-cast v1, Ljava/lang/Iterable;

    .line 242
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 245
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/jni/SingleType;

    check-cast v3, Lexpo/modules/kotlin/jni/SingleType;

    .line 211
    sget-object v5, Lexpo/modules/kotlin/jni/SingleType;->Companion:Lexpo/modules/kotlin/jni/SingleType$Companion;

    invoke-virtual {v5, v3, v4}, Lexpo/modules/kotlin/jni/SingleType$Companion;->merge(Lexpo/modules/kotlin/jni/SingleType;Lexpo/modules/kotlin/jni/SingleType;)Lexpo/modules/kotlin/jni/SingleType;

    move-result-object v3

    goto :goto_3

    .line 248
    :cond_3
    check-cast v3, Lexpo/modules/kotlin/jni/SingleType;

    .line 241
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 214
    new-instance p1, Lexpo/modules/kotlin/jni/ExpectedType;

    check-cast v0, Ljava/util/Collection;

    .line 251
    new-array v1, v2, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 214
    check-cast v0, [Lexpo/modules/kotlin/jni/SingleType;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object p1
.end method

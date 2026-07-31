.class public final Lcom/fasterxml/jackson/databind/type/TypeFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLS_BOOL:Ljava/lang/Class;

.field public static final CLS_CLASS:Ljava/lang/Class;

.field public static final CLS_COMPARABLE:Ljava/lang/Class;

.field public static final CLS_ENUM:Ljava/lang/Class;

.field public static final CLS_INT:Ljava/lang/Class;

.field public static final CLS_JSON_NODE:Ljava/lang/Class;

.field public static final CLS_LONG:Ljava/lang/Class;

.field public static final CLS_OBJECT:Ljava/lang/Class;

.field public static final CLS_STRING:Ljava/lang/Class;

.field public static final CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_JSON_NODE:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field public static final EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field public static final NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

.field public static final instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# instance fields
.field public final _typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 3
    .line 4
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 5
    .line 6
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 12
    .line 13
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 14
    .line 15
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 16
    .line 17
    const-class v0, Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_STRING:Ljava/lang/Class;

    .line 20
    .line 21
    const-class v1, Ljava/lang/Object;

    .line 22
    .line 23
    sput-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_OBJECT:Ljava/lang/Class;

    .line 24
    .line 25
    const-class v2, Ljava/lang/Comparable;

    .line 26
    .line 27
    sput-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_COMPARABLE:Ljava/lang/Class;

    .line 28
    .line 29
    const-class v3, Ljava/lang/Class;

    .line 30
    .line 31
    sput-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_CLASS:Ljava/lang/Class;

    .line 32
    .line 33
    const-class v4, Ljava/lang/Enum;

    .line 34
    .line 35
    sput-object v4, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_ENUM:Ljava/lang/Class;

    .line 36
    .line 37
    const-class v5, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 38
    .line 39
    sput-object v5, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_JSON_NODE:Ljava/lang/Class;

    .line 40
    .line 41
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    sput-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_BOOL:Ljava/lang/Class;

    .line 44
    .line 45
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    sput-object v7, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_INT:Ljava/lang/Class;

    .line 48
    .line 49
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    sput-object v8, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_LONG:Ljava/lang/Class;

    .line 52
    .line 53
    new-instance v9, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 54
    .line 55
    invoke-direct {v9, v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    sput-object v9, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 59
    .line 60
    new-instance v6, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 61
    .line 62
    invoke-direct {v6, v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 66
    .line 67
    new-instance v6, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 68
    .line 69
    invoke-direct {v6, v8}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    sput-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 73
    .line 74
    new-instance v6, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 75
    .line 76
    invoke-direct {v6, v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    sput-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 80
    .line 81
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 87
    .line 88
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 94
    .line 95
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 96
    .line 97
    invoke-direct {v0, v4}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 101
    .line 102
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 103
    .line 104
    invoke-direct {v0, v3}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 108
    .line 109
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 110
    .line 111
    invoke-direct {v0, v5}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_JSON_NODE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 115
    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 14
    .line 15
    return-void
.end method

.method public static _findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_BOOL:Ljava/lang/Class;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_INT:Ljava/lang/Class;

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_LONG:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne p0, v0, :cond_5

    .line 24
    .line 25
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_STRING:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_OBJECT:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne p0, v0, :cond_4

    .line 38
    .line 39
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_JSON_NODE:Ljava/lang/Class;

    .line 43
    .line 44
    if-ne p0, v0, :cond_5

    .line 45
    .line 46
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_JSON_NODE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_5
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static _verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;

    .line 7
    .line 8
    iput-object p0, p1, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;->_actualType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    move v2, v3

    .line 40
    :goto_0
    if-ge v2, v0, :cond_3

    .line 41
    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 53
    .line 54
    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    :goto_1
    return v3

    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return v1
.end method

.method public static constructGeneralizedType(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-array v0, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p1, v0, v3

    .line 29
    .line 30
    aput-object p0, v0, v2

    .line 31
    .line 32
    const-string p0, "Class %s not a super-type of %s"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-array v0, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v0, v3

    .line 45
    .line 46
    aput-object p0, v0, v2

    .line 47
    .line 48
    const-string p0, "Internal error: class %s not included as super-type for %s"

    .line 49
    .line 50
    invoke-static {p0, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-object v1
.end method

.method public static findTypeParameters(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 15
    .line 16
    return-object p0
.end method

.method public static uncheckedSimpleType(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v0, v2, v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final _fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 9

    .line 1
    instance-of v0, p2, Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Class;

    .line 6
    .line 7
    sget-object p3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Class;

    .line 26
    .line 27
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_ENUM:Ljava/lang/Class;

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_COMPARABLE:Ljava/lang/Class;

    .line 35
    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_CLASS:Ljava/lang/Class;

    .line 42
    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-nez p2, :cond_4

    .line 53
    .line 54
    move v2, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    array-length v2, p2

    .line 57
    :goto_0
    if-nez v2, :cond_5

    .line 58
    .line 59
    sget-object p2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    new-array v3, v2, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 63
    .line 64
    :goto_1
    if-ge v1, v2, :cond_6

    .line 65
    .line 66
    aget-object v4, p2, v1

    .line 67
    .line 68
    invoke-virtual {p0, p1, v4, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    aput-object v4, v3, v1

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    invoke-static {v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_7
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    check-cast p2, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 91
    .line 92
    return-object p2

    .line 93
    :cond_8
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    sget p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->$r8$clinit:I

    .line 108
    .line 109
    iget-object p0, v3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 110
    .line 111
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    new-instance v2, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    move-object v4, p3

    .line 121
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 122
    .line 123
    .line 124
    return-object v2

    .line 125
    :cond_9
    move-object v4, p3

    .line 126
    instance-of p3, p2, Ljava/lang/reflect/TypeVariable;

    .line 127
    .line 128
    if-eqz p3, :cond_12

    .line 129
    .line 130
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const/4 v0, 0x0

    .line 137
    if-eqz v4, :cond_11

    .line 138
    .line 139
    iget-object v2, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    .line 140
    .line 141
    array-length v3, v2

    .line 142
    move v5, v1

    .line 143
    :goto_3
    if-ge v5, v3, :cond_b

    .line 144
    .line 145
    aget-object v6, v2, v5

    .line 146
    .line 147
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_a

    .line 152
    .line 153
    iget-object v0, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 154
    .line 155
    aget-object v0, v0, v5

    .line 156
    .line 157
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 158
    .line 159
    if-eqz v2, :cond_b

    .line 160
    .line 161
    move-object v2, v0

    .line 162
    check-cast v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 165
    .line 166
    if-eqz v2, :cond_b

    .line 167
    .line 168
    move-object v0, v2

    .line 169
    goto :goto_4

    .line 170
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_c
    iget-object v0, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    array-length v2, v0

    .line 181
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 182
    .line 183
    if-ltz v2, :cond_e

    .line 184
    .line 185
    aget-object v3, v0, v2

    .line 186
    .line 187
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_d

    .line 192
    .line 193
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_e
    iget-object v0, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    .line 197
    .line 198
    if-nez v0, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_5

    .line 202
    :cond_f
    array-length v2, v0

    .line 203
    :goto_5
    if-nez v2, :cond_10

    .line 204
    .line 205
    const/4 v0, 0x1

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_10
    add-int/lit8 v3, v2, 0x1

    .line 210
    .line 211
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, [Ljava/lang/String;

    .line 216
    .line 217
    :goto_6
    aput-object p3, v0, v2

    .line 218
    .line 219
    new-instance p3, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 220
    .line 221
    iget-object v2, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    .line 222
    .line 223
    iget-object v3, v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 224
    .line 225
    invoke-direct {p3, v2, v3, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/type/TypeBase;[Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    monitor-enter p2

    .line 229
    :try_start_0
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    aget-object p2, v0, v1

    .line 235
    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    move-object p0, v0

    .line 243
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    throw p0

    .line 245
    :cond_11
    const-string p0, "Null `bindings` passed (type variable \""

    .line 246
    .line 247
    const-string p1, "\")"

    .line 248
    .line 249
    invoke-static {p0, p3, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-object v0

    .line 257
    :cond_12
    instance-of p3, p2, Ljava/lang/reflect/WildcardType;

    .line 258
    .line 259
    if-eqz p3, :cond_13

    .line 260
    .line 261
    check-cast p2, Ljava/lang/reflect/WildcardType;

    .line 262
    .line 263
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    aget-object p2, p2, v1

    .line 268
    .line 269
    invoke-virtual {p0, p1, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string p3, "Unrecognized Type: "

    .line 279
    .line 280
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    if-nez p2, :cond_14

    .line 284
    .line 285
    const-string p2, "[null]"

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    :goto_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p0
.end method

.method public final _fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    return-object v4

    .line 16
    :cond_0
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;

    .line 26
    .line 27
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 28
    .line 29
    iget v6, v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    .line 30
    .line 31
    invoke-direct {v4, v2, v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;-><init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/type/TypeBase;I)V

    .line 32
    .line 33
    .line 34
    move-object v10, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    move-object v10, v2

    .line 37
    :goto_1
    iget-object v11, v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 38
    .line 39
    iget-object v4, v11, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {v4, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_3
    const/16 v5, 0x1b

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    new-instance v1, Lcom/caverock/androidsvg/SVG;

    .line 56
    .line 57
    invoke-direct {v1, v5, v12, v2}, Lcom/caverock/androidsvg/SVG;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object v13, v1

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Ljava/lang/Class;

    .line 65
    .line 66
    if-ne v6, v2, :cond_5

    .line 67
    .line 68
    move-object v9, v1

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 71
    .line 72
    :goto_2
    check-cast v6, Lcom/caverock/androidsvg/SVG;

    .line 73
    .line 74
    if-eqz v6, :cond_7

    .line 75
    .line 76
    iget-object v7, v6, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Ljava/lang/Class;

    .line 79
    .line 80
    if-ne v7, v2, :cond_6

    .line 81
    .line 82
    move-object v9, v6

    .line 83
    goto :goto_3

    .line 84
    :cond_6
    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    move-object v9, v12

    .line 88
    :goto_3
    if-eqz v9, :cond_9

    .line 89
    .line 90
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object/from16 v1, p2

    .line 101
    .line 102
    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v9, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Ljava/util/ArrayList;

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v1, v9, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 117
    .line 118
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_9
    new-instance v6, Lcom/caverock/androidsvg/SVG;

    .line 123
    .line 124
    invoke-direct {v6, v5, v1, v2}, Lcom/caverock/androidsvg/SVG;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object v13, v6

    .line 128
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v14, 0x0

    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v13, v1, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget v0, Lcom/fasterxml/jackson/databind/type/ArrayType;->$r8$clinit:I

    .line 144
    .line 145
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {v0, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v3, v0

    .line 152
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    move-object/from16 v2, p3

    .line 158
    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_13

    .line 163
    .line 164
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_b

    .line 169
    .line 170
    invoke-virtual {v0, v13, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveSuperInterfaces(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    move-object v1, v12

    .line 175
    goto :goto_6

    .line 176
    :cond_b
    sget-object v1, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-nez v1, :cond_c

    .line 183
    .line 184
    move-object v1, v12

    .line 185
    goto :goto_5

    .line 186
    :cond_c
    invoke-virtual {v0, v13, v1, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_5
    invoke-virtual {v0, v13, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveSuperInterfaces(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_6
    sget-object v5, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 195
    .line 196
    const-class v15, Ljava/util/Properties;

    .line 197
    .line 198
    if-ne v2, v15, :cond_d

    .line 199
    .line 200
    move-object v4, v0

    .line 201
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 202
    .line 203
    const/4 v8, 0x0

    .line 204
    const/4 v9, 0x0

    .line 205
    const/4 v7, 0x0

    .line 206
    move-object v6, v5

    .line 207
    move-object/from16 v16, v3

    .line 208
    .line 209
    move-object v3, v1

    .line 210
    move-object v1, v2

    .line 211
    move-object/from16 v2, v16

    .line 212
    .line 213
    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 214
    .line 215
    .line 216
    move-object v2, v1

    .line 217
    move-object/from16 v1, v16

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    move-object/from16 v16, v4

    .line 221
    .line 222
    move-object v4, v0

    .line 223
    move-object/from16 v0, v16

    .line 224
    .line 225
    move-object/from16 v16, v3

    .line 226
    .line 227
    move-object v3, v1

    .line 228
    move-object/from16 v1, v16

    .line 229
    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    invoke-virtual {v3, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeBase;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_e
    :goto_7
    if-nez v0, :cond_1d

    .line 237
    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_f
    move-object v0, v1

    .line 244
    :goto_8
    const-class v6, Ljava/util/Map;

    .line 245
    .line 246
    const/4 v7, 0x1

    .line 247
    sget-object v8, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 248
    .line 249
    if-ne v2, v6, :cond_14

    .line 250
    .line 251
    if-ne v2, v15, :cond_10

    .line 252
    .line 253
    move-object v2, v0

    .line 254
    :goto_9
    move-object v6, v5

    .line 255
    goto :goto_b

    .line 256
    :cond_10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_13

    .line 265
    .line 266
    const/4 v8, 0x2

    .line 267
    if-eq v6, v8, :cond_12

    .line 268
    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    if-ne v6, v7, :cond_11

    .line 280
    .line 281
    const-string v4, ""

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_11
    const-string v4, "s"

    .line 285
    .line 286
    :goto_a
    const/4 v5, 0x4

    .line 287
    new-array v5, v5, [Ljava/lang/Object;

    .line 288
    .line 289
    aput-object v2, v5, v14

    .line 290
    .line 291
    aput-object v3, v5, v7

    .line 292
    .line 293
    aput-object v4, v5, v8

    .line 294
    .line 295
    const/4 v2, 0x3

    .line 296
    aput-object v0, v5, v2

    .line 297
    .line 298
    const-string v0, "Strange Map type %s with %d type parameter%s (%s), can not resolve"

    .line 299
    .line 300
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v1

    .line 308
    :cond_12
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 313
    .line 314
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    check-cast v5, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 319
    .line 320
    move-object v2, v6

    .line 321
    move-object v6, v5

    .line 322
    move-object v5, v2

    .line 323
    move-object v2, v0

    .line 324
    goto :goto_b

    .line 325
    :cond_13
    move-object v2, v0

    .line 326
    move-object v5, v8

    .line 327
    goto :goto_9

    .line 328
    :goto_b
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 329
    .line 330
    const/4 v8, 0x0

    .line 331
    const/4 v9, 0x0

    .line 332
    const/4 v7, 0x0

    .line 333
    move-object v15, v1

    .line 334
    move-object/from16 v1, p2

    .line 335
    .line 336
    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_10

    .line 340
    .line 341
    :cond_14
    move-object v15, v1

    .line 342
    move-object v1, v2

    .line 343
    move-object v2, v0

    .line 344
    const-class v0, Ljava/util/Collection;

    .line 345
    .line 346
    const-string v5, ": cannot determine type parameters"

    .line 347
    .line 348
    if-ne v1, v0, :cond_17

    .line 349
    .line 350
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-eqz v6, :cond_15

    .line 359
    .line 360
    :goto_c
    move-object v5, v8

    .line 361
    goto :goto_d

    .line 362
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-ne v6, v7, :cond_16

    .line 367
    .line 368
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    move-object v8, v0

    .line 373
    check-cast v8, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 374
    .line 375
    goto :goto_c

    .line 376
    :goto_d
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 377
    .line 378
    const/4 v7, 0x0

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v6, 0x0

    .line 381
    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 382
    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_16
    const-string v0, "Strange Collection type "

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1, v5, v0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    return-object v12

    .line 395
    :cond_17
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 396
    .line 397
    if-ne v1, v0, :cond_1a

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_18

    .line 408
    .line 409
    :goto_e
    move-object v5, v8

    .line 410
    goto :goto_f

    .line 411
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-ne v6, v7, :cond_19

    .line 416
    .line 417
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    move-object v8, v0

    .line 422
    check-cast v8, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :goto_f
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    .line 426
    .line 427
    const/4 v8, 0x0

    .line 428
    const/4 v9, 0x0

    .line 429
    const/4 v6, 0x0

    .line 430
    const/4 v7, 0x0

    .line 431
    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_10

    .line 435
    :cond_19
    const-string v0, "Strange Reference type "

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-static {v1, v5, v0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    return-object v12

    .line 445
    :cond_1a
    move-object v0, v12

    .line 446
    :goto_10
    if-nez v0, :cond_1d

    .line 447
    .line 448
    array-length v0, v4

    .line 449
    :goto_11
    if-ge v14, v0, :cond_1c

    .line 450
    .line 451
    aget-object v2, v4, v14

    .line 452
    .line 453
    invoke-virtual {v2, v1, v15, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeBase;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    if-eqz v2, :cond_1b

    .line 458
    .line 459
    move-object v0, v2

    .line 460
    goto :goto_12

    .line 461
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 462
    .line 463
    goto :goto_11

    .line 464
    :cond_1c
    move-object v0, v12

    .line 465
    :goto_12
    if-nez v0, :cond_1d

    .line 466
    .line 467
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 468
    .line 469
    invoke-direct {v0, v1, v15, v3, v4}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeBase;[Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 470
    .line 471
    .line 472
    :cond_1d
    :goto_13
    iget-object v1, v13, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v1, Ljava/util/ArrayList;

    .line 475
    .line 476
    if-eqz v1, :cond_1f

    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_1f

    .line 487
    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 493
    .line 494
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 495
    .line 496
    if-nez v3, :cond_1e

    .line 497
    .line 498
    iput-object v0, v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 499
    .line 500
    goto :goto_14

    .line 501
    :cond_1e
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 502
    .line 503
    const-string v2, ", new = "

    .line 504
    .line 505
    const-string v3, "Trying to re-set self reference; old value = "

    .line 506
    .line 507
    invoke-static {v3, v1, v2, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    return-object v12

    .line 511
    :cond_1f
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasHandlers()Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_20

    .line 516
    .line 517
    invoke-virtual {v11, v10, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 518
    .line 519
    .line 520
    :cond_20
    return-object v0
.end method

.method public final _resolveSuperInterfaces(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 4

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    array-length v0, p2

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    array-length v0, p2

    .line 14
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    aget-object v3, p2, v2

    .line 20
    .line 21
    invoke-virtual {p0, p1, v3, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v1

    .line 31
    :cond_2
    :goto_1
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 32
    .line 33
    return-object p0
.end method

.method public final constructSpecializedType(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 8
    .line 9
    if-ne v3, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-class v4, Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v5, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v6, v2, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_16

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_6

    .line 36
    .line 37
    instance-of v7, v1, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    const-class v7, Ljava/util/HashMap;

    .line 42
    .line 43
    if-eq v2, v7, :cond_2

    .line 44
    .line 45
    const-class v7, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    if-eq v2, v7, :cond_2

    .line 48
    .line 49
    const-class v7, Ljava/util/EnumMap;

    .line 50
    .line 51
    if-eq v2, v7, :cond_2

    .line 52
    .line 53
    const-class v7, Ljava/util/TreeMap;

    .line 54
    .line 55
    if-ne v2, v7, :cond_6

    .line 56
    .line 57
    :cond_2
    move-object v3, v1

    .line 58
    check-cast v3, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 59
    .line 60
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 63
    .line 64
    invoke-static {v2, v4, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v6, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_3
    instance-of v7, v1, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 75
    .line 76
    if-eqz v7, :cond_6

    .line 77
    .line 78
    const-class v7, Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eq v2, v7, :cond_5

    .line 81
    .line 82
    const-class v7, Ljava/util/LinkedList;

    .line 83
    .line 84
    if-eq v2, v7, :cond_5

    .line 85
    .line 86
    const-class v7, Ljava/util/HashSet;

    .line 87
    .line 88
    if-eq v2, v7, :cond_5

    .line 89
    .line 90
    const-class v7, Ljava/util/TreeSet;

    .line 91
    .line 92
    if-ne v2, v7, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const-class v7, Ljava/util/EnumSet;

    .line 96
    .line 97
    if-ne v3, v7, :cond_6

    .line 98
    .line 99
    :goto_0
    return-object v1

    .line 100
    :cond_5
    :goto_1
    move-object v3, v1

    .line 101
    check-cast v3, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 104
    .line 105
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v6, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    goto/16 :goto_9

    .line 114
    .line 115
    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_7

    .line 124
    .line 125
    invoke-virtual {v0, v6, v2, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    array-length v7, v7

    .line 136
    if-nez v7, :cond_8

    .line 137
    .line 138
    invoke-virtual {v0, v6, v2, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_8
    new-array v5, v7, [Lcom/fasterxml/jackson/databind/type/PlaceholderForType;

    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    :goto_2
    if-ge v9, v7, :cond_9

    .line 148
    .line 149
    new-instance v10, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;

    .line 150
    .line 151
    invoke-direct {v10, v9}, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;-><init>(I)V

    .line 152
    .line 153
    .line 154
    aput-object v10, v5, v9

    .line 155
    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_9
    invoke-static {v2, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v0, v6, v2, v9}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v9, v3}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-eqz v9, :cond_15

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    const/4 v12, 0x0

    .line 198
    :goto_3
    if-ge v12, v11, :cond_10

    .line 199
    .line 200
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    check-cast v13, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 205
    .line 206
    if-ge v12, v10, :cond_a

    .line 207
    .line 208
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    check-cast v14, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_a
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    :goto_4
    invoke-static {v13, v14}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;)Z

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    if-nez v15, :cond_e

    .line 224
    .line 225
    invoke-virtual {v13, v4}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasRawClass(Ljava/lang/Class;)Z

    .line 226
    .line 227
    .line 228
    move-result v15

    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    iget-object v8, v13, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 232
    .line 233
    if-eqz v15, :cond_b

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_b
    if-nez v12, :cond_c

    .line 237
    .line 238
    instance-of v15, v1, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 239
    .line 240
    if-eqz v15, :cond_c

    .line 241
    .line 242
    invoke-virtual {v14, v4}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasRawClass(Ljava/lang/Class;)Z

    .line 243
    .line 244
    .line 245
    move-result v15

    .line 246
    if-eqz v15, :cond_c

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    if-eqz v15, :cond_d

    .line 254
    .line 255
    iget-object v15, v14, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 256
    .line 257
    if-eq v8, v15, :cond_f

    .line 258
    .line 259
    invoke-virtual {v8, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_d

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_d
    const/4 v3, 0x1

    .line 267
    add-int/2addr v12, v3

    .line 268
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/type/TypeBase;->buildCanonicalName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/type/TypeBase;->buildCanonicalName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    const/4 v11, 0x4

    .line 285
    new-array v11, v11, [Ljava/lang/Object;

    .line 286
    .line 287
    aput-object v4, v11, v16

    .line 288
    .line 289
    aput-object v8, v11, v3

    .line 290
    .line 291
    const/4 v3, 0x2

    .line 292
    aput-object v9, v11, v3

    .line 293
    .line 294
    const/4 v3, 0x3

    .line 295
    aput-object v10, v11, v3

    .line 296
    .line 297
    const-string v3, "Type parameter #%d/%d differs; can not specialize %s with %s"

    .line 298
    .line 299
    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    move-object/from16 v22, v3

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_e
    const/16 v16, 0x0

    .line 307
    .line 308
    :cond_f
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_10
    const/16 v16, 0x0

    .line 312
    .line 313
    move-object/from16 v22, v6

    .line 314
    .line 315
    :goto_6
    if-eqz v22, :cond_12

    .line 316
    .line 317
    if-eqz p3, :cond_11

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->buildCanonicalName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v18

    .line 324
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v20

    .line 328
    const-string v21, ", problem: "

    .line 329
    .line 330
    const-string v17, "Failed to specialize base type "

    .line 331
    .line 332
    const-string v19, " as "

    .line 333
    .line 334
    invoke-static/range {v17 .. v22}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-object v6

    .line 338
    :cond_12
    :goto_7
    new-array v3, v7, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 339
    .line 340
    move/from16 v8, v16

    .line 341
    .line 342
    :goto_8
    if-ge v8, v7, :cond_14

    .line 343
    .line 344
    aget-object v4, v5, v8

    .line 345
    .line 346
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/type/PlaceholderForType;->_actualType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 347
    .line 348
    if-nez v4, :cond_13

    .line 349
    .line 350
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    :cond_13
    aput-object v4, v3, v8

    .line 355
    .line 356
    add-int/lit8 v8, v8, 0x1

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :cond_14
    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v0, v6, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    :goto_9
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->withHandlersFrom(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    return-object v0

    .line 372
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v2, "Internal error: unable to locate supertype ("

    .line 381
    .line 382
    const-string v3, ") from resolved subtype "

    .line 383
    .line 384
    invoke-static {v2, v0, v3, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-object v6

    .line 392
    :cond_16
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const-string v2, "Class "

    .line 401
    .line 402
    const-string v3, " not subtype of "

    .line 403
    .line 404
    invoke-static {v2, v0, v3, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-object v6
.end method

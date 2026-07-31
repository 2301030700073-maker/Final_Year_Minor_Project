.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _collectAnnotations:Z

.field public _mixInResolver:Ljava/lang/Object;

.field public final _typeFactory:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V

    .line 15
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Ljava/lang/Object;

    .line 16
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public _findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/util/Map;
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getSuperClass()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 10
    .line 11
    new-instance v1, Lcoil3/svg/internal/AndroidSvg;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v2, v3}, Lcoil3/svg/internal/AndroidSvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-ge v4, v2, :cond_5

    .line 36
    .line 37
    aget-object v5, v1, v4

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez v0, :cond_3

    .line 58
    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_3
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 65
    .line 66
    invoke-direct {v6, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Field;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    sget-object v7, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 84
    .line 85
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    if-eqz v0, :cond_a

    .line 96
    .line 97
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 100
    .line 101
    if-eqz p1, :cond_a

    .line 102
    .line 103
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_a

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_a

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Ljava/lang/Class;

    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    array-length v1, p2

    .line 135
    move v2, v3

    .line 136
    :goto_2
    if-ge v2, v1, :cond_6

    .line 137
    .line 138
    aget-object v4, p2, v2

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_8

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 167
    .line 168
    if-eqz v5, :cond_9

    .line 169
    .line 170
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p0, v6, v4}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 181
    .line 182
    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_a
    return-object v0
.end method

.method public collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcoil3/memory/MemoryCacheService;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    new-instance p0, Lcoil3/memory/MemoryCacheService;

    .line 45
    .line 46
    const/16 p1, 0x10

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-direct {p0, p2, p1}, Lcoil3/memory/MemoryCacheService;-><init>(CI)V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcoil3/memory/MemoryCacheService;
    .locals 5

    .line 53
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_2

    .line 54
    array-length v0, p1

    .line 55
    new-array v1, v0, [Lcoil3/memory/MemoryCacheService;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 56
    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    .line 57
    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 58
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object v3

    .line 59
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 60
    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;

    return-object p0
.end method

.method public constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 7
    .line 8
    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 13
    .line 14
    new-instance p3, Lcoil3/memory/MemoryCacheService;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    invoke-direct {p3, v1, v3}, Lcoil3/memory/MemoryCacheService;-><init>(CI)V

    .line 20
    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-array v2, v0, [Lcoil3/memory/MemoryCacheService;

    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_0
    if-ge v4, v0, :cond_1

    .line 29
    .line 30
    new-instance v5, Lcoil3/memory/MemoryCacheService;

    .line 31
    .line 32
    invoke-direct {v5, v1, v3}, Lcoil3/memory/MemoryCacheService;-><init>(CI)V

    .line 33
    .line 34
    .line 35
    aput-object v5, v2, v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    if-nez v0, :cond_4

    .line 45
    .line 46
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p0, v1, p3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p2, p1, p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz p3, :cond_5

    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez p3, :cond_6

    .line 103
    .line 104
    const/4 p3, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    :goto_2
    invoke-virtual {p0, v2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcoil3/memory/MemoryCacheService;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v0, p2, p1, v1, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method public constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 4
    .line 5
    iget v1, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 6
    .line 7
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v1, v1

    .line 16
    iput v1, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 19
    .line 20
    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v3, :cond_3

    .line 24
    .line 25
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 26
    .line 27
    new-instance p1, Lcoil3/memory/MemoryCacheService;

    .line 28
    .line 29
    const/16 p2, 0x10

    .line 30
    .line 31
    invoke-direct {p1, v5, p2}, Lcoil3/memory/MemoryCacheService;-><init>(CI)V

    .line 32
    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-array v4, v1, [Lcoil3/memory/MemoryCacheService;

    .line 38
    .line 39
    move v3, v5

    .line 40
    :goto_0
    if-ge v3, v1, :cond_2

    .line 41
    .line 42
    new-instance v6, Lcoil3/memory/MemoryCacheService;

    .line 43
    .line 44
    invoke-direct {v6, v5, p2}, Lcoil3/memory/MemoryCacheService;-><init>(CI)V

    .line 45
    .line 46
    .line 47
    aput-object v6, v4, v3

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    invoke-direct {p0, v0, v2, p1, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_3
    if-nez v1, :cond_4

    .line 57
    .line 58
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcoil3/memory/MemoryCacheService;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v1, v0, v2, p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_4
    iget-object v3, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 69
    .line 70
    if-nez v3, :cond_5

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, p1, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 77
    .line 78
    :cond_5
    array-length v4, v3

    .line 79
    const/4 v6, 0x0

    .line 80
    if-eq v1, v4, :cond_9

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v7, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 87
    .line 88
    const-class v7, Ljava/lang/Enum;

    .line 89
    .line 90
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    const/4 v8, 0x1

    .line 95
    const/4 v9, 0x2

    .line 96
    if-eqz v7, :cond_6

    .line 97
    .line 98
    array-length v7, v3

    .line 99
    add-int/2addr v7, v9

    .line 100
    if-ne v1, v7, :cond_6

    .line 101
    .line 102
    array-length v4, v3

    .line 103
    add-int/2addr v4, v9

    .line 104
    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    .line 105
    .line 106
    array-length v7, v3

    .line 107
    invoke-static {v3, v5, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcoil3/memory/MemoryCacheService;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    :goto_2
    move-object v3, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_7

    .line 121
    .line 122
    array-length v4, v3

    .line 123
    add-int/2addr v4, v8

    .line 124
    if-ne v1, v4, :cond_7

    .line 125
    .line 126
    array-length v4, v3

    .line 127
    add-int/2addr v4, v8

    .line 128
    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    .line 129
    .line 130
    array-length v7, v3

    .line 131
    invoke-static {v3, v5, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 135
    .line 136
    aput-object v3, v4, v5

    .line 137
    .line 138
    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcoil3/memory/MemoryCacheService;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    array-length v0, v3

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/4 v1, 0x3

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object p1, v1, v5

    .line 169
    .line 170
    aput-object p2, v1, v8

    .line 171
    .line 172
    aput-object v0, v1, v9

    .line 173
    .line 174
    const-string p1, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    .line 175
    .line 176
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_9
    if-nez p2, :cond_a

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_a
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 188
    .line 189
    if-nez v1, :cond_b

    .line 190
    .line 191
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 198
    .line 199
    :cond_b
    move-object v6, v1

    .line 200
    :goto_4
    invoke-virtual {p0, v3, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcoil3/memory/MemoryCacheService;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :goto_5
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 205
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcoil3/memory/MemoryCacheService;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-direct {v1, v0, v2, p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 211
    .line 212
    .line 213
    return-object v1
.end method

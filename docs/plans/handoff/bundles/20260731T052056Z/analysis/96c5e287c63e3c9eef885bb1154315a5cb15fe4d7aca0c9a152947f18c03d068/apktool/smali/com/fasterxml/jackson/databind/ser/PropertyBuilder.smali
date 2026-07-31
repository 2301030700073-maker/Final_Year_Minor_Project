.class public final Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _annotationIntrospector:Ljava/lang/Object;

.field public final _beanDesc:Ljava/lang/Object;

.field public final _config:Ljava/lang/Object;

.field public _defaultBean:Ljava/lang/Object;

.field public final _defaultInclusion:Ljava/lang/Object;

.field public _useRealPropertyDefaults:Z


# direct methods
.method public constructor <init>(IFLandroidx/compose/foundation/pager/PagerState;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 91
    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 92
    invoke-direct {p3, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 93
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 94
    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 95
    invoke-direct {p3, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 96
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 97
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    const/16 p3, 0x1e

    const/16 v0, 0x64

    invoke-direct {p2, p1, p3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;-><init>(III)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p2, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v0

    .line 31
    :goto_0
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_configOverrides:Lkotlin/InitializedLazyImpl;

    .line 46
    .line 47
    iget-object p2, p2, Lkotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    move-object p2, v0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    :goto_2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object p2, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 62
    .line 63
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 64
    .line 65
    if-ne p2, v0, :cond_4

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/4 p2, 0x0

    .line 70
    :goto_3
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 81
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 82
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 84
    sget-object p3, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 85
    iget-wide v1, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    invoke-virtual {p3, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 87
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 88
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 102
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 103
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    goto :goto_2

    .line 105
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 106
    iget-wide v2, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    if-nez p3, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    invoke-interface {p3, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 109
    :goto_3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    return-void
.end method

.method public static _addSuperInterfaces(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne v3, v0, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-class p2, Ljava/util/List;

    .line 31
    .line 32
    if-eq v0, p2, :cond_6

    .line 33
    .line 34
    const-class p2, Ljava/util/Map;

    .line 35
    .line 36
    if-ne v0, p2, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    array-length v0, p0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    if-eq v0, p2, :cond_4

    .line 51
    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    aget-object p0, p0, v1

    .line 58
    .line 59
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    goto :goto_1

    .line 64
    :cond_5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 65
    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 81
    .line 82
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addSuperInterfaces(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    :goto_3
    return-void
.end method

.method public static _addSuperTypes(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, v1, :cond_8

    .line 6
    .line 7
    const-class v1, Ljava/lang/Enum;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne v3, v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    array-length v2, p2

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    if-eq v2, v0, :cond_5

    .line 51
    .line 52
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    aget-object p2, p2, v1

    .line 58
    .line 59
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 65
    .line 66
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 81
    .line 82
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addSuperInterfaces(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getSuperClass()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_8

    .line 91
    .line 92
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addSuperTypes(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_3
    return-void
.end method

.method public static resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 5
    .line 6
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-class v2, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasRawClass(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v5, v2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addSuperInterfaces(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1, v5, v2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addSuperTypes(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 51
    .line 52
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    check-cast v4, Ljava/lang/Class;

    .line 56
    .line 57
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v8, v0

    .line 64
    check-cast v8, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 65
    .line 66
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v9, v0

    .line 69
    check-cast v9, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 72
    .line 73
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 74
    .line 75
    iget-boolean v12, v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v3, p1

    .line 79
    move-object v10, p2

    .line 80
    invoke-direct/range {v2 .. v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public static resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v5, v2

    .line 25
    check-cast v5, Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v7, v2

    .line 34
    check-cast v7, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v8, v2

    .line 39
    check-cast v8, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 42
    .line 43
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 44
    .line 45
    iget-boolean v11, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    move-object v3, p1

    .line 49
    move-object v9, p2

    .line 50
    invoke-direct/range {v1 .. v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method


# virtual methods
.method public _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-object v2, p2, v1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->isPresent(Ljava/lang/annotation/Annotation;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object p1
.end method

.method public _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p3, p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object p1
.end method

.method public _addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    aget-object v2, p2, v1

    .line 14
    .line 15
    instance-of v3, v2, Ljava/lang/annotation/Target;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    instance-of v3, v2, Ljava/lang/annotation/Retention;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->isPresent(Ljava/lang/annotation/Annotation;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object p1
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;ZLcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p0, p3, :cond_2

    .line 16
    .line 17
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object p3, p3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    :goto_0
    move-object p3, p0

    .line 35
    move p2, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, " not a super-type of (declared) class "

    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v4, "Illegal concrete-type annotation for method \'"

    .line 52
    .line 53
    const-string v6, "\': class "

    .line 54
    .line 55
    invoke-static/range {v4 .. v9}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    sget-object p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 66
    .line 67
    if-eq p0, p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 70
    .line 71
    if-ne p0, p1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_2
    move p2, v2

    .line 76
    :cond_4
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/TypeBase;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_5
    return-object v1
.end method

.method public resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Class;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-eqz v2, :cond_2

    .line 19
    .line 20
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 31
    :goto_1
    if-nez v3, :cond_3

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    :goto_2
    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/Annotated;->NO_ANNOTATIONS:Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Ljava/lang/Class;

    .line 41
    .line 42
    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0, v5, v0, v4}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    :cond_4
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v5, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_8

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 79
    .line 80
    invoke-interface {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p0, v5, v4, v6}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    :cond_7
    if-eqz v1, :cond_6

    .line 89
    .line 90
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v5, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v5, v0

    .line 101
    goto :goto_3

    .line 102
    :cond_8
    if-eqz v3, :cond_9

    .line 103
    .line 104
    const-class p1, Ljava/lang/Object;

    .line 105
    .line 106
    invoke-interface {v2, p1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v5, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

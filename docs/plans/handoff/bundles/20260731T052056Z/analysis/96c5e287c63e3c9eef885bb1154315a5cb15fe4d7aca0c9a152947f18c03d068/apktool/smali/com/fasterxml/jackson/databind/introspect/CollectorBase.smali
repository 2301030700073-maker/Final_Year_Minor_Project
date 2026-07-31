.class public abstract Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field public static final NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;


# instance fields
.field public final _intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lcoil3/memory/MemoryCacheService;

    .line 3
    .line 4
    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 7
    .line 8
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 4

    .line 29
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    aget-object v2, p2, v1

    .line 31
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object p1

    .line 32
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v1
.end method

.method public final collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 9

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->isPresent(Ljava/lang/annotation/Annotation;)Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    array-length v5, v3

    .line 35
    move v6, v1

    .line 36
    :goto_1
    if-ge v6, v5, :cond_2

    .line 37
    .line 38
    aget-object v7, v3, v6

    .line 39
    .line 40
    instance-of v8, v7, Ljava/lang/annotation/Target;

    .line 41
    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    instance-of v8, v7, Ljava/lang/annotation/Retention;

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->isPresent(Ljava/lang/annotation/Annotation;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-object p1
.end method

.method public final collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
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
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    aget-object v2, p2, v1

    .line 14
    .line 15
    instance-of v3, v2, Ljava/lang/annotation/Target;

    .line 16
    .line 17
    if-nez v3, :cond_2

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
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->isPresent(Ljava/lang/annotation/Annotation;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-object p1
.end method

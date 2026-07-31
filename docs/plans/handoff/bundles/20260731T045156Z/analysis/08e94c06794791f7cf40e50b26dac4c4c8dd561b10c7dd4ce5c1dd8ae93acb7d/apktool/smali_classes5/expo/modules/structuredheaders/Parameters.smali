.class public Lexpo/modules/structuredheaders/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lexpo/modules/structuredheaders/Item<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lexpo/modules/structuredheaders/Parameters;


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parameters;-><init>(Ljava/util/Map;)V

    sput-object v0, Lexpo/modules/structuredheaders/Parameters;->EMPTY:Lexpo/modules/structuredheaders/Parameters;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lexpo/modules/structuredheaders/Parameters;->checkAndTransformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    return-void
.end method

.method private static asItem(Ljava/lang/String;Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    instance-of v0, p1, Lexpo/modules/structuredheaders/Item;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1

    .line 80
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lexpo/modules/structuredheaders/IntegerItem;->valueOf(J)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 83
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lexpo/modules/structuredheaders/IntegerItem;->valueOf(J)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object p0

    return-object p0

    .line 84
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lexpo/modules/structuredheaders/StringItem;->valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object p0

    return-object p0

    .line 86
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lexpo/modules/structuredheaders/BooleanItem;->valueOf(Z)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object p0

    return-object p0

    .line 88
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 89
    check-cast p1, [B

    invoke-static {p1}, Lexpo/modules/structuredheaders/ByteSequenceItem;->valueOf([B)Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object p0

    return-object p0

    .line 90
    :cond_5
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 91
    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lexpo/modules/structuredheaders/DecimalItem;->valueOf(Ljava/math/BigDecimal;)Lexpo/modules/structuredheaders/DecimalItem;

    move-result-object p0

    return-object p0

    .line 93
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t map value for parameter \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\': "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAndTransformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    const-string v1, "Map must not be null"

    .line 64
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lexpo/modules/structuredheaders/Utils;->checkKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lexpo/modules/structuredheaders/Parameters;->asItem(Ljava/lang/String;Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;

    move-result-object v3

    .line 68
    invoke-interface {v3}, Lexpo/modules/structuredheaders/Item;->getParams()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/structuredheaders/Parameters;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameter value for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' must be bare item (no parameters)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/util/Map;)Lexpo/modules/structuredheaders/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/structuredheaders/Parameters;"
        }
    .end annotation

    .line 48
    new-instance v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parameters;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 100
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public compute(Ljava/lang/String;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->compute(Ljava/lang/String;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/String;Ljava/util/function/Function;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->computeIfAbsent(Ljava/lang/String;Ljava/util/function/Function;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/String;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->computeIfPresent(Ljava/lang/String;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/Parameters;->get(Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p2, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->getOrDefault(Ljava/lang/Object;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public merge(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/structuredheaders/Parameters;->merge(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;Ljava/util/function/BiFunction;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->put(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putIfAbsent(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->putIfAbsent(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/Parameters;->remove(Ljava/lang/Object;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Item;

    return-object p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/structuredheaders/Parameters;->replace(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;)Lexpo/modules/structuredheaders/Item;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/structuredheaders/Item;

    check-cast p3, Lexpo/modules/structuredheaders/Item;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/structuredheaders/Parameters;->replace(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;Lexpo/modules/structuredheaders/Item;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/String;Lexpo/modules/structuredheaders/Item;Lexpo/modules/structuredheaders/Item;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/Parameters;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 52
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v2, 0x3b

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/structuredheaders/Item;

    invoke-interface {v2}, Lexpo/modules/structuredheaders/Item;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3d

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/structuredheaders/Item;

    invoke-interface {v1, p1}, Lexpo/modules/structuredheaders/Item;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 206
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parameters;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

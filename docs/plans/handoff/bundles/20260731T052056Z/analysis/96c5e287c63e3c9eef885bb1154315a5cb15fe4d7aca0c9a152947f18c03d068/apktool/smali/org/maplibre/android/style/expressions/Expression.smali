.class public Lorg/maplibre/android/style/expressions/Expression;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final arguments:[Lorg/maplibre/android/style/expressions/Expression;

.field public final operator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 8
    .line 9
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    const-string v0, "get"

    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static literal(Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v1, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v0, :cond_0

    .line 20
    .line 21
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    aput-object v4, v1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    .line 31
    .line 32
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    .line 39
    .line 40
    aput-object v0, v1, v2

    .line 41
    .line 42
    const-string v0, "literal"

    .line 43
    .line 44
    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    instance-of v0, p0, Lorg/maplibre/android/style/expressions/Expression;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    const-string p0, "Can\'t convert an expression to a literal"

    .line 59
    .line 60
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static varargs match(Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;Lorg/maplibre/android/style/expressions/Expression;[Lokhttp3/FormBody$Builder;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lorg/maplibre/android/style/expressions/Expression;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    invoke-static {p2}, Lokhttp3/FormBody$Builder;->toExpressionArray([Lokhttp3/FormBody$Builder;)[Lorg/maplibre/android/style/expressions/Expression;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v1, p0}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array p2, v0, [Lorg/maplibre/android/style/expressions/Expression;

    .line 16
    .line 17
    aput-object p1, p2, v2

    .line 18
    .line 19
    invoke-static {p0, p2}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lorg/maplibre/android/style/expressions/Expression;

    .line 24
    .line 25
    const-string p2, "match"

    .line 26
    .line 27
    invoke-direct {p1, p2, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public static stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    iput-object p0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, v0, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    instance-of v1, p1, Lorg/maplibre/android/style/expressions/Expression;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lorg/maplibre/android/style/expressions/Expression;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-eqz v1, :cond_3

    .line 29
    .line 30
    :goto_0
    return v0

    .line 31
    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p0, v0

    .line 20
    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    instance-of v4, v3, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v3, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 26
    .line 27
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->toValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget-object v3, p0, v2

    .line 27
    .line 28
    const-string v4, ", "

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 7
    .line 8
    return-void
.end method

.method public static final checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public static final checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z
    .locals 3

    .line 1
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->possibleIntegerTypes(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    .line 7
    instance-of v0, p2, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p2

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 36
    .line 37
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    if-eqz p4, :cond_1

    .line 52
    .line 53
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 54
    .line 55
    invoke-static {v1, p1, p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public static collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->fastCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCommonFinalClassConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 38
    .line 39
    invoke-interface {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, p0

    .line 47
    :goto_0
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    .line 56
    .line 57
    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_b

    .line 81
    .line 82
    iget v5, v4, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    .line 83
    .line 84
    const/16 v6, 0x3e8

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    if-gt v5, v6, :cond_a

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 105
    .line 106
    invoke-interface {v1, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-nez v6, :cond_5

    .line 111
    .line 112
    move-object v6, v5

    .line 113
    :cond_5
    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-object v6, v0

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_7

    .line 133
    .line 134
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->substitutionSupertypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$substitutionSupertypePolicy$2;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-nez v7, :cond_8

    .line 146
    .line 147
    move-object v10, v6

    .line 148
    :cond_8
    if-nez v10, :cond_9

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_9
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_4

    .line 168
    .line 169
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 174
    .line 175
    invoke-virtual {v10, p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string p2, "Too many supertypes for type: "

    .line 186
    .line 187
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/4 v8, 0x0

    .line 194
    const/16 v9, 0x3f

    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    const/4 v6, 0x0

    .line 198
    const/4 v7, 0x0

    .line 199
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string p2, ". Supertypes = "

    .line 204
    .line 205
    invoke-static {p0, p2, p1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    return-object v10

    .line 209
    :cond_b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 210
    .line 211
    .line 212
    return-object v2
.end method

.method public static collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x2

    .line 12
    if-ge p2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 36
    .line 37
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-ge v4, v3, :cond_2

    .line 47
    .line 48
    invoke-interface {p0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_4
    :goto_2
    return-object p1
.end method

.method public static equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    invoke-static {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, p2

    .line 34
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p0, p1, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 94
    .line 95
    invoke-static {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-static {v0, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 108
    return p0

    .line 109
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public static getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 6

    .line 1
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    if-ge v2, v0, :cond_6

    .line 9
    .line 10
    invoke-interface {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    move-object v3, v4

    .line 21
    :cond_0
    if-eqz v3, :cond_5

    .line 22
    .line 23
    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->originalIfDefinitelyNotNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->originalIfDefinitelyNotNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v4, v1

    .line 61
    :goto_1
    invoke-virtual {v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_4

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-static {p0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    return-object v3
.end method

.method public static isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDenotable(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public static isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ne v2, v3, :cond_c

    .line 20
    .line 21
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eq v2, v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    move v2, v4

    .line 30
    :goto_0
    const/4 v5, 0x1

    .line 31
    if-ge v2, v3, :cond_b

    .line 32
    .line 33
    invoke-interface {v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_a

    .line 42
    .line 43
    invoke-interface {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 52
    .line 53
    .line 54
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 55
    .line 56
    invoke-interface {v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-interface {v0, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-interface {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    if-ne v10, v9, :cond_1

    .line 79
    .line 80
    move-object v10, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    if-ne v6, v9, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-ne v10, v6, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v10, 0x0

    .line 89
    :goto_1
    if-nez v10, :cond_4

    .line 90
    .line 91
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything:Z

    .line 92
    .line 93
    return p0

    .line 94
    :cond_4
    if-ne v10, v9, :cond_5

    .line 95
    .line 96
    invoke-static {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    .line 103
    .line 104
    const/16 v9, 0x64

    .line 105
    .line 106
    if-gt v6, v9, :cond_9

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    .line 111
    .line 112
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 113
    .line 114
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    aget v6, v6, v9

    .line 119
    .line 120
    if-eq v6, v5, :cond_8

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 124
    .line 125
    if-eq v6, v5, :cond_7

    .line 126
    .line 127
    const/4 v5, 0x3

    .line 128
    if-ne v6, v5, :cond_6

    .line 129
    .line 130
    invoke-static {v9, p0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    goto :goto_2

    .line 135
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 136
    .line 137
    .line 138
    return v4

    .line 139
    :cond_7
    invoke-static {v9, p0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    invoke-static {p0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    :goto_2
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    .line 149
    .line 150
    add-int/lit8 v6, v6, -0x1

    .line 151
    .line 152
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    .line 153
    .line 154
    if-nez v5, :cond_a

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_9
    const-string p0, "Arguments depth is too high. Some related argument: "

    .line 158
    .line 159
    invoke-static {p0, v8}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$8(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return v4

    .line 163
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_b
    return v5

    .line 168
    :cond_c
    :goto_3
    return v4
.end method

.method public static isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    .line 8
    .line 9
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    :goto_0
    move/from16 v16, v5

    .line 21
    .line 22
    goto/16 :goto_22

    .line 23
    .line 24
    :cond_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v8, 0x0

    .line 49
    if-nez v7, :cond_12

    .line 50
    .line 51
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_1
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubTypeForBuilderInference(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->original(Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object v7, v6

    .line 81
    :cond_3
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v10, 0x0

    .line 93
    :goto_1
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 94
    .line 95
    if-eqz v7, :cond_9

    .line 96
    .line 97
    if-eqz v10, :cond_9

    .line 98
    .line 99
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    invoke-interface {v4, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_6

    .line 115
    .line 116
    invoke-interface {v4, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    :cond_6
    :goto_2
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;->CHECK_SUBTYPE_AND_LOWER:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;

    .line 121
    .line 122
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    aget v7, v12, v7

    .line 129
    .line 130
    if-eq v7, v5, :cond_8

    .line 131
    .line 132
    const/4 v12, 0x2

    .line 133
    if-eq v7, v12, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    invoke-static {v11, v0, v3, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_9

    .line 141
    .line 142
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_8
    invoke-static {v11, v0, v3, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_9
    :goto_3
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_d

    .line 165
    .line 166
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 167
    .line 168
    .line 169
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Ljava/lang/Iterable;

    .line 174
    .line 175
    instance-of v7, v6, Ljava/util/Collection;

    .line 176
    .line 177
    if-eqz v7, :cond_b

    .line 178
    .line 179
    move-object v7, v6

    .line 180
    check-cast v7, Ljava/util/Collection;

    .line 181
    .line 182
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_b

    .line 187
    .line 188
    :cond_a
    move v3, v5

    .line 189
    goto :goto_4

    .line 190
    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_a

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 205
    .line 206
    invoke-static {v11, v0, v3, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_c

    .line 211
    .line 212
    move v3, v8

    .line 213
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :cond_d
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    instance-of v10, v3, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 224
    .line 225
    if-nez v10, :cond_10

    .line 226
    .line 227
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_11

    .line 232
    .line 233
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    check-cast v7, Ljava/lang/Iterable;

    .line 238
    .line 239
    instance-of v10, v7, Ljava/util/Collection;

    .line 240
    .line 241
    if-eqz v10, :cond_e

    .line 242
    .line 243
    move-object v10, v7

    .line 244
    check-cast v10, Ljava/util/Collection;

    .line 245
    .line 246
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_e

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    if-eqz v10, :cond_10

    .line 262
    .line 263
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 268
    .line 269
    instance-of v10, v10, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 270
    .line 271
    if-nez v10, :cond_f

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_10
    :goto_5
    invoke-static {v4, v6, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    if-eqz v3, :cond_11

    .line 279
    .line 280
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-interface {v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_11

    .line 289
    .line 290
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_11
    :goto_6
    const/4 v3, 0x0

    .line 294
    goto :goto_8

    .line 295
    :cond_12
    :goto_7
    iget-boolean v7, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything:Z

    .line 296
    .line 297
    if-eqz v7, :cond_13

    .line 298
    .line 299
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_13
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_14

    .line 307
    .line 308
    invoke-interface {v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    if-nez v7, :cond_14

    .line 313
    .line 314
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_14
    invoke-interface {v4, v3, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-interface {v4, v6, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->strictEqualTypesInternal(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    :goto_8
    if-eqz v3, :cond_15

    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    return v0

    .line 346
    :cond_15
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 355
    .line 356
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 357
    .line 358
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    const-string v10, ". Supertypes = "

    .line 363
    .line 364
    const-string v11, "Too many supertypes for type: "

    .line 365
    .line 366
    const/16 v12, 0x3e8

    .line 367
    .line 368
    if-eqz v7, :cond_16

    .line 369
    .line 370
    goto/16 :goto_e

    .line 371
    .line 372
    :cond_16
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    if-nez v7, :cond_25

    .line 377
    .line 378
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-eqz v7, :cond_17

    .line 383
    .line 384
    goto/16 :goto_e

    .line 385
    .line 386
    :cond_17
    instance-of v7, v1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 387
    .line 388
    if-eqz v7, :cond_18

    .line 389
    .line 390
    move-object v7, v1

    .line 391
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 392
    .line 393
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isProjectionNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-eqz v7, :cond_18

    .line 398
    .line 399
    goto/16 :goto_e

    .line 400
    .line 401
    :cond_18
    invoke-static {v0, v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    if-eqz v7, :cond_19

    .line 406
    .line 407
    goto/16 :goto_e

    .line 408
    .line 409
    :cond_19
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-eqz v7, :cond_1a

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_1a
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 417
    .line 418
    invoke-static {v0, v2, v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-eqz v7, :cond_1b

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_1b
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-eqz v7, :cond_1c

    .line 430
    .line 431
    :goto_9
    return v8

    .line 432
    :cond_1c
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-static {v0, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    if-eqz v13, :cond_1d

    .line 444
    .line 445
    goto/16 :goto_e

    .line 446
    .line 447
    :cond_1d
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 448
    .line 449
    .line 450
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    .line 451
    .line 452
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    iget-object v14, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 456
    .line 457
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v13, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :cond_1e
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    if-nez v15, :cond_24

    .line 468
    .line 469
    iget v15, v14, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    .line 470
    .line 471
    if-gt v15, v12, :cond_23

    .line 472
    .line 473
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v15

    .line 477
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 478
    .line 479
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v14, v15}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v16

    .line 486
    if-eqz v16, :cond_1e

    .line 487
    .line 488
    invoke-interface {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 489
    .line 490
    .line 491
    move-result v16

    .line 492
    if-eqz v16, :cond_1f

    .line 493
    .line 494
    move-object v9, v3

    .line 495
    goto :goto_b

    .line 496
    :cond_1f
    move-object v9, v6

    .line 497
    :goto_b
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v16

    .line 501
    if-nez v16, :cond_20

    .line 502
    .line 503
    goto :goto_c

    .line 504
    :cond_20
    const/4 v9, 0x0

    .line 505
    :goto_c
    if-nez v9, :cond_21

    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_21
    invoke-interface {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 509
    .line 510
    .line 511
    move-result-object v15

    .line 512
    invoke-interface {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v15

    .line 520
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v16

    .line 524
    if-eqz v16, :cond_1e

    .line 525
    .line 526
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v16

    .line 530
    move-object/from16 v12, v16

    .line 531
    .line 532
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 533
    .line 534
    invoke-virtual {v9, v0, v12}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 535
    .line 536
    .line 537
    move-result-object v12

    .line 538
    invoke-static {v0, v12, v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 539
    .line 540
    .line 541
    move-result v16

    .line 542
    if-eqz v16, :cond_22

    .line 543
    .line 544
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_22
    invoke-virtual {v13, v12}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    const/16 v12, 0x3e8

    .line 552
    .line 553
    goto :goto_d

    .line 554
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const/16 v18, 0x0

    .line 563
    .line 564
    const/16 v19, 0x3f

    .line 565
    .line 566
    const/4 v15, 0x0

    .line 567
    const/16 v16, 0x0

    .line 568
    .line 569
    const/16 v17, 0x0

    .line 570
    .line 571
    invoke-static/range {v14 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-static {v0, v10, v1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    return v8

    .line 579
    :cond_24
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 580
    .line 581
    .line 582
    return v8

    .line 583
    :cond_25
    :goto_e
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 592
    .line 593
    .line 594
    move-result v12

    .line 595
    if-nez v12, :cond_27

    .line 596
    .line 597
    invoke-interface {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 598
    .line 599
    .line 600
    move-result v12

    .line 601
    if-nez v12, :cond_27

    .line 602
    .line 603
    :cond_26
    const/4 v7, 0x0

    .line 604
    goto :goto_11

    .line 605
    :cond_27
    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 606
    .line 607
    .line 608
    move-result v12

    .line 609
    if-eqz v12, :cond_28

    .line 610
    .line 611
    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 612
    .line 613
    .line 614
    move-result v12

    .line 615
    if-eqz v12, :cond_28

    .line 616
    .line 617
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 618
    .line 619
    goto :goto_11

    .line 620
    :cond_28
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 621
    .line 622
    .line 623
    move-result v12

    .line 624
    if-eqz v12, :cond_29

    .line 625
    .line 626
    invoke-static {v4, v0, v7, v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z

    .line 627
    .line 628
    .line 629
    move-result v7

    .line 630
    if-eqz v7, :cond_26

    .line 631
    .line 632
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 633
    .line 634
    goto :goto_11

    .line 635
    :cond_29
    invoke-interface {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 636
    .line 637
    .line 638
    move-result v12

    .line 639
    if-eqz v12, :cond_26

    .line 640
    .line 641
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 642
    .line 643
    .line 644
    move-result-object v12

    .line 645
    instance-of v13, v12, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 646
    .line 647
    if-eqz v13, :cond_2c

    .line 648
    .line 649
    invoke-interface {v4, v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 650
    .line 651
    .line 652
    move-result-object v12

    .line 653
    check-cast v12, Ljava/lang/Iterable;

    .line 654
    .line 655
    instance-of v13, v12, Ljava/util/Collection;

    .line 656
    .line 657
    if-eqz v13, :cond_2a

    .line 658
    .line 659
    move-object v13, v12

    .line 660
    check-cast v13, Ljava/util/Collection;

    .line 661
    .line 662
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 663
    .line 664
    .line 665
    move-result v13

    .line 666
    if-eqz v13, :cond_2a

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_2a
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object v12

    .line 673
    :cond_2b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v13

    .line 677
    if-eqz v13, :cond_2c

    .line 678
    .line 679
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v13

    .line 683
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 684
    .line 685
    invoke-interface {v4, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 686
    .line 687
    .line 688
    move-result-object v13

    .line 689
    if-eqz v13, :cond_2b

    .line 690
    .line 691
    invoke-interface {v4, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 692
    .line 693
    .line 694
    move-result v13

    .line 695
    if-ne v13, v5, :cond_2b

    .line 696
    .line 697
    goto :goto_10

    .line 698
    :cond_2c
    :goto_f
    invoke-static {v4, v0, v9, v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z

    .line 699
    .line 700
    .line 701
    move-result v7

    .line 702
    if-eqz v7, :cond_26

    .line 703
    .line 704
    :goto_10
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 705
    .line 706
    :goto_11
    if-eqz v7, :cond_2d

    .line 707
    .line 708
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    return v0

    .line 713
    :cond_2d
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 718
    .line 719
    .line 720
    move-result-object v9

    .line 721
    invoke-interface {v4, v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 722
    .line 723
    .line 724
    move-result v9

    .line 725
    if-eqz v9, :cond_2e

    .line 726
    .line 727
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    .line 728
    .line 729
    .line 730
    move-result v9

    .line 731
    if-nez v9, :cond_2e

    .line 732
    .line 733
    goto/16 :goto_0

    .line 734
    .line 735
    :cond_2e
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    invoke-interface {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isAnyConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 740
    .line 741
    .line 742
    move-result v9

    .line 743
    if-eqz v9, :cond_2f

    .line 744
    .line 745
    goto/16 :goto_0

    .line 746
    .line 747
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    .line 749
    .line 750
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    if-eqz v9, :cond_30

    .line 755
    .line 756
    invoke-static {v0, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v9

    .line 760
    :goto_12
    move/from16 p3, v8

    .line 761
    .line 762
    goto/16 :goto_18

    .line 763
    .line 764
    :cond_30
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 765
    .line 766
    .line 767
    move-result v9

    .line 768
    if-nez v9, :cond_31

    .line 769
    .line 770
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    if-nez v9, :cond_31

    .line 775
    .line 776
    invoke-static {v0, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    goto :goto_12

    .line 781
    :cond_31
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    .line 782
    .line 783
    invoke-direct {v9}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 787
    .line 788
    .line 789
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    .line 790
    .line 791
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 795
    .line 796
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v12, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    :cond_32
    :goto_13
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v14

    .line 806
    if-nez v14, :cond_37

    .line 807
    .line 808
    iget v14, v13, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    .line 809
    .line 810
    const/16 v15, 0x3e8

    .line 811
    .line 812
    if-gt v14, v15, :cond_36

    .line 813
    .line 814
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v14

    .line 818
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 819
    .line 820
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v13, v14}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v15

    .line 827
    if-eqz v15, :cond_32

    .line 828
    .line 829
    invoke-interface {v4, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 830
    .line 831
    .line 832
    move-result v15

    .line 833
    if-eqz v15, :cond_33

    .line 834
    .line 835
    invoke-virtual {v9, v14}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-object v15, v3

    .line 839
    goto :goto_14

    .line 840
    :cond_33
    move-object v15, v6

    .line 841
    :goto_14
    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v16

    .line 845
    if-nez v16, :cond_34

    .line 846
    .line 847
    goto :goto_15

    .line 848
    :cond_34
    const/4 v15, 0x0

    .line 849
    :goto_15
    if-nez v15, :cond_35

    .line 850
    .line 851
    goto :goto_13

    .line 852
    :cond_35
    invoke-interface {v4, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 853
    .line 854
    .line 855
    move-result-object v14

    .line 856
    invoke-interface {v4, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 857
    .line 858
    .line 859
    move-result-object v14

    .line 860
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 861
    .line 862
    .line 863
    move-result-object v14

    .line 864
    :goto_16
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 865
    .line 866
    .line 867
    move-result v16

    .line 868
    if-eqz v16, :cond_32

    .line 869
    .line 870
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v16

    .line 874
    move/from16 p3, v8

    .line 875
    .line 876
    move-object/from16 v8, v16

    .line 877
    .line 878
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 879
    .line 880
    invoke-virtual {v15, v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 881
    .line 882
    .line 883
    move-result-object v8

    .line 884
    invoke-virtual {v12, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move/from16 v8, p3

    .line 888
    .line 889
    goto :goto_16

    .line 890
    :cond_36
    move/from16 p3, v8

    .line 891
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const/16 v17, 0x0

    .line 901
    .line 902
    const/16 v18, 0x3f

    .line 903
    .line 904
    const/4 v14, 0x0

    .line 905
    const/4 v15, 0x0

    .line 906
    const/16 v16, 0x0

    .line 907
    .line 908
    invoke-static/range {v13 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    invoke-static {v0, v10, v1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 913
    .line 914
    .line 915
    return p3

    .line 916
    :cond_37
    move/from16 p3, v8

    .line 917
    .line 918
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 919
    .line 920
    .line 921
    new-instance v8, Ljava/util/ArrayList;

    .line 922
    .line 923
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->iterator()Ljava/util/Iterator;

    .line 927
    .line 928
    .line 929
    move-result-object v9

    .line 930
    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 931
    .line 932
    .line 933
    move-result v12

    .line 934
    if-eqz v12, :cond_38

    .line 935
    .line 936
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v12

    .line 940
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 941
    .line 942
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-static {v0, v12, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    .line 946
    .line 947
    .line 948
    move-result-object v12

    .line 949
    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 950
    .line 951
    .line 952
    goto :goto_17

    .line 953
    :cond_38
    move-object v9, v8

    .line 954
    :goto_18
    new-instance v8, Ljava/util/ArrayList;

    .line 955
    .line 956
    const/16 v12, 0xa

    .line 957
    .line 958
    invoke-static {v9, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 959
    .line 960
    .line 961
    move-result v13

    .line 962
    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 963
    .line 964
    .line 965
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 966
    .line 967
    .line 968
    move-result-object v9

    .line 969
    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 970
    .line 971
    .line 972
    move-result v13

    .line 973
    if-eqz v13, :cond_3a

    .line 974
    .line 975
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v13

    .line 979
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 980
    .line 981
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    .line 983
    .line 984
    iget-object v14, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    .line 985
    .line 986
    invoke-virtual {v14, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 987
    .line 988
    .line 989
    move-result-object v14

    .line 990
    invoke-interface {v4, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 991
    .line 992
    .line 993
    move-result-object v14

    .line 994
    if-nez v14, :cond_39

    .line 995
    .line 996
    goto :goto_1a

    .line 997
    :cond_39
    move-object v13, v14

    .line 998
    :goto_1a
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    goto :goto_19

    .line 1002
    :cond_3a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1003
    .line 1004
    .line 1005
    move-result v9

    .line 1006
    if-eqz v9, :cond_46

    .line 1007
    .line 1008
    if-eq v9, v5, :cond_45

    .line 1009
    .line 1010
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    .line 1011
    .line 1012
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    .line 1013
    .line 1014
    .line 1015
    move-result v6

    .line 1016
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v6

    .line 1023
    move/from16 v9, p3

    .line 1024
    .line 1025
    move v10, v9

    .line 1026
    :goto_1b
    if-ge v9, v6, :cond_41

    .line 1027
    .line 1028
    if-nez v10, :cond_3c

    .line 1029
    .line 1030
    invoke-interface {v4, v7, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v10

    .line 1034
    invoke-interface {v4, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v10

    .line 1038
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 1039
    .line 1040
    if-eq v10, v11, :cond_3b

    .line 1041
    .line 1042
    goto :goto_1c

    .line 1043
    :cond_3b
    move/from16 v10, p3

    .line 1044
    .line 1045
    goto :goto_1d

    .line 1046
    :cond_3c
    :goto_1c
    move v10, v5

    .line 1047
    :goto_1d
    if-nez v10, :cond_40

    .line 1048
    .line 1049
    new-instance v11, Ljava/util/ArrayList;

    .line 1050
    .line 1051
    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1052
    .line 1053
    .line 1054
    move-result v13

    .line 1055
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v13

    .line 1062
    :goto_1e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v14

    .line 1066
    if-eqz v14, :cond_3f

    .line 1067
    .line 1068
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v14

    .line 1072
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 1073
    .line 1074
    invoke-interface {v4, v14, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgumentOrNull(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v15

    .line 1078
    if-eqz v15, :cond_3e

    .line 1079
    .line 1080
    move/from16 v16, v5

    .line 1081
    .line 1082
    invoke-interface {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v5

    .line 1086
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 1087
    .line 1088
    if-ne v5, v12, :cond_3d

    .line 1089
    .line 1090
    goto :goto_1f

    .line 1091
    :cond_3d
    const/4 v15, 0x0

    .line 1092
    :goto_1f
    if-eqz v15, :cond_3e

    .line 1093
    .line 1094
    invoke-interface {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v5

    .line 1098
    if-eqz v5, :cond_3e

    .line 1099
    .line 1100
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move/from16 v5, v16

    .line 1104
    .line 1105
    const/16 v12, 0xa

    .line 1106
    .line 1107
    goto :goto_1e

    .line 1108
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1109
    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    const-string v4, "Incorrect type: "

    .line 1113
    .line 1114
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    const-string v4, ", subType: "

    .line 1121
    .line 1122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    const-string v1, ", superType: "

    .line 1129
    .line 1130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    throw v0

    .line 1148
    :cond_3f
    move/from16 v16, v5

    .line 1149
    .line 1150
    invoke-interface {v4, v11}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->intersectTypes(Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v5

    .line 1154
    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asTypeArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v5

    .line 1158
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    goto :goto_20

    .line 1162
    :cond_40
    move/from16 v16, v5

    .line 1163
    .line 1164
    :goto_20
    add-int/lit8 v9, v9, 0x1

    .line 1165
    .line 1166
    move/from16 v5, v16

    .line 1167
    .line 1168
    const/16 v12, 0xa

    .line 1169
    .line 1170
    goto/16 :goto_1b

    .line 1171
    .line 1172
    :cond_41
    move/from16 v16, v5

    .line 1173
    .line 1174
    if-nez v10, :cond_42

    .line 1175
    .line 1176
    invoke-static {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    if-eqz v1, :cond_42

    .line 1181
    .line 1182
    goto :goto_22

    .line 1183
    :cond_42
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    move/from16 v8, p3

    .line 1188
    .line 1189
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    if-eqz v3, :cond_44

    .line 1194
    .line 1195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v3

    .line 1199
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 1200
    .line 1201
    if-eqz v8, :cond_43

    .line 1202
    .line 1203
    goto :goto_21

    .line 1204
    :cond_43
    invoke-interface {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-static {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 1209
    .line 1210
    .line 1211
    move-result v3

    .line 1212
    move v8, v3

    .line 1213
    goto :goto_21

    .line 1214
    :cond_44
    return v8

    .line 1215
    :cond_45
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 1220
    .line 1221
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    return v0

    .line 1230
    :cond_46
    move/from16 v16, v5

    .line 1231
    .line 1232
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v5

    .line 1240
    if-eqz v5, :cond_47

    .line 1241
    .line 1242
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v0

    .line 1246
    return v0

    .line 1247
    :cond_47
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v2

    .line 1255
    if-eqz v2, :cond_48

    .line 1256
    .line 1257
    :goto_22
    return v16

    .line 1258
    :cond_48
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 1259
    .line 1260
    .line 1261
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    .line 1262
    .line 1263
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    .line 1265
    .line 1266
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 1267
    .line 1268
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1272
    .line 1273
    .line 1274
    :cond_49
    :goto_23
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v7

    .line 1278
    if-nez v7, :cond_4f

    .line 1279
    .line 1280
    iget v7, v5, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    .line 1281
    .line 1282
    const/16 v15, 0x3e8

    .line 1283
    .line 1284
    if-gt v7, v15, :cond_4e

    .line 1285
    .line 1286
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v7

    .line 1290
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 1291
    .line 1292
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v5, v7}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v8

    .line 1299
    if-eqz v8, :cond_49

    .line 1300
    .line 1301
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v8

    .line 1305
    if-eqz v8, :cond_4a

    .line 1306
    .line 1307
    move-object v8, v3

    .line 1308
    goto :goto_24

    .line 1309
    :cond_4a
    move-object v8, v6

    .line 1310
    :goto_24
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v9

    .line 1314
    if-nez v9, :cond_4b

    .line 1315
    .line 1316
    goto :goto_25

    .line 1317
    :cond_4b
    const/4 v8, 0x0

    .line 1318
    :goto_25
    if-nez v8, :cond_4c

    .line 1319
    .line 1320
    goto :goto_23

    .line 1321
    :cond_4c
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v7

    .line 1325
    invoke-interface {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v7

    .line 1329
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v7

    .line 1333
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1334
    .line 1335
    .line 1336
    move-result v9

    .line 1337
    if-eqz v9, :cond_49

    .line 1338
    .line 1339
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v9

    .line 1343
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 1344
    .line 1345
    invoke-virtual {v8, v0, v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v9

    .line 1349
    invoke-interface {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v12

    .line 1353
    invoke-interface {v4, v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v12

    .line 1357
    if-eqz v12, :cond_4d

    .line 1358
    .line 1359
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 1360
    .line 1361
    .line 1362
    return v16

    .line 1363
    :cond_4d
    invoke-virtual {v2, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1364
    .line 1365
    .line 1366
    goto :goto_26

    .line 1367
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    const/16 v21, 0x0

    .line 1376
    .line 1377
    const/16 v22, 0x3f

    .line 1378
    .line 1379
    const/16 v18, 0x0

    .line 1380
    .line 1381
    const/16 v19, 0x0

    .line 1382
    .line 1383
    const/16 v20, 0x0

    .line 1384
    .line 1385
    move-object/from16 v17, v5

    .line 1386
    .line 1387
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    invoke-static {v0, v10, v1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1392
    .line 1393
    .line 1394
    return p3

    .line 1395
    :cond_4f
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 1396
    .line 1397
    .line 1398
    return p3
.end method

.method public static isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isOldCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureStatus(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public static makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
    .locals 6

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v0, v2

    .line 47
    :goto_0
    const/4 v3, 0x1

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/16 v0, 0x18

    .line 75
    .line 76
    invoke-static {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->createClassicTypeCheckerState$default(ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;I)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    .line 85
    .line 86
    invoke-static {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    xor-int/2addr v3, v0

    .line 91
    :goto_1
    if-eqz v3, :cond_6

    .line 92
    .line 93
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 99
    .line 100
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 101
    .line 102
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 107
    .line 108
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_6
    return-object v2
.end method


# virtual methods
.method public checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 21
    .line 22
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 45
    .line 46
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public create(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->isCapturedFromOuterDeclaration()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 62
    .line 63
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;

    .line 80
    .line 81
    invoke-direct {p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 89
    .line 90
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, [Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 95
    .line 96
    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 97
    .line 98
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, [Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 103
    .line 104
    invoke-direct {p1, p0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;[Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Z)V

    .line 105
    .line 106
    .line 107
    return-object p1
.end method

.method public expandRecursively(Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 16

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
    move/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 10
    .line 11
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 12
    .line 13
    iget-object v6, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 16
    .line 17
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-direct {v4, v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    invoke-virtual {v0, v4, v1, v5, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    return-object v7

    .line 49
    :cond_0
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v0, v4, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_1
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v4, 0x1

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_3

    .line 104
    .line 105
    move-object v0, v2

    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v8, v8, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v8, Lj$/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_d

    .line 133
    .line 134
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    iget-object v11, v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v11, v10}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 151
    .line 152
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v12, v10}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 159
    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v13, 0x2

    .line 162
    if-nez v11, :cond_9

    .line 163
    .line 164
    if-eqz v10, :cond_8

    .line 165
    .line 166
    if-nez v11, :cond_5

    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :cond_5
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 171
    .line 172
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 173
    .line 174
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-eqz v15, :cond_6

    .line 187
    .line 188
    move-object v10, v11

    .line 189
    goto :goto_1

    .line 190
    :cond_6
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    if-eqz v15, :cond_7

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 198
    .line 199
    new-array v13, v13, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 200
    .line 201
    aput-object v10, v13, v12

    .line 202
    .line 203
    aput-object v11, v13, v4

    .line 204
    .line 205
    invoke-direct {v15, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 206
    .line 207
    .line 208
    move-object v10, v15

    .line 209
    :goto_1
    invoke-direct {v14, v10}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 210
    .line 211
    .line 212
    move-object v10, v14

    .line 213
    goto :goto_4

    .line 214
    :cond_8
    move-object v10, v5

    .line 215
    goto :goto_4

    .line 216
    :cond_9
    if-nez v10, :cond_a

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_a
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 220
    .line 221
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 222
    .line 223
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 224
    .line 225
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    if-eqz v15, :cond_b

    .line 236
    .line 237
    move-object v11, v10

    .line 238
    goto :goto_2

    .line 239
    :cond_b
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    if-eqz v15, :cond_c

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_c
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 247
    .line 248
    new-array v13, v13, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 249
    .line 250
    aput-object v11, v13, v12

    .line 251
    .line 252
    aput-object v10, v13, v4

    .line 253
    .line 254
    invoke-direct {v15, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 255
    .line 256
    .line 257
    move-object v11, v15

    .line 258
    :goto_2
    invoke-direct {v14, v11}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 259
    .line 260
    .line 261
    move-object v11, v14

    .line 262
    :goto_3
    move-object v10, v11

    .line 263
    :goto_4
    if-eqz v10, :cond_4

    .line 264
    .line 265
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_d
    invoke-static {v9}, Lokhttp3/FormBody$Builder;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    :goto_5
    invoke-static {v7, v5, v0, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    :goto_6
    invoke-static {v7, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz p5, :cond_e

    .line 283
    .line 284
    iget-object v4, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    .line 285
    .line 286
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, Ljava/util/List;

    .line 289
    .line 290
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    .line 291
    .line 292
    invoke-static {v1, v5, v2, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleTypeWithNonTrivialMemberScope(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :cond_e
    return-object v0
.end method

.method public expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
    .locals 11

    .line 1
    iget-object v0, p2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-gt p4, v1, :cond_24

    .line 8
    .line 9
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v1, v3

    .line 58
    :goto_0
    const/4 v2, 0x0

    .line 59
    if-nez v1, :cond_d

    .line 60
    .line 61
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_c

    .line 78
    .line 79
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;

    .line 80
    .line 81
    invoke-static {p3, v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_2
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    instance-of v4, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 112
    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_3
    instance-of v4, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 118
    .line 119
    if-eqz v4, :cond_8

    .line 120
    .line 121
    move-object v7, v1

    .line 122
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 123
    .line 124
    invoke-virtual {p2, v7}, Lokio/internal/DefaultSocket;->isRecursion(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 131
    .line 132
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 133
    .line 134
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->RECURSIVE_TYPE_ALIAS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 135
    .line 136
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    .line 137
    .line 138
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/name/Name;->name:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    filled-new-array {p3}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 156
    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_4
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v8, Ljava/util/ArrayList;

    .line 164
    .line 165
    const/16 v4, 0xa

    .line 166
    .line 167
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_6

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    add-int/lit8 v6, v2, 0x1

    .line 189
    .line 190
    if-ltz v2, :cond_5

    .line 191
    .line 192
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 193
    .line 194
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 203
    .line 204
    add-int/lit8 v9, p4, 0x1

    .line 205
    .line 206
    invoke-virtual {p0, v5, p2, v2, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move v2, v6

    .line 214
    goto :goto_1

    .line 215
    :cond_5
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 216
    .line 217
    .line 218
    throw v3

    .line 219
    :cond_6
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    .line 220
    .line 221
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;->getParameters()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 249
    .line 250
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_7
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    new-instance v1, Lokio/internal/DefaultSocket;

    .line 267
    .line 268
    const/4 v10, 0x4

    .line 269
    move-object v6, p2

    .line 270
    move-object v5, v1

    .line 271
    invoke-direct/range {v5 .. v10}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    add-int/lit8 v4, p4, 0x1

    .line 283
    .line 284
    const/4 v5, 0x0

    .line 285
    move-object v0, p0

    .line 286
    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    move-object p2, v0

    .line 291
    invoke-virtual {p2, p3, v6, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lokio/internal/DefaultSocket;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 300
    .line 301
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 306
    .line 307
    .line 308
    return-object p2

    .line 309
    :cond_8
    move-object v6, p2

    .line 310
    move-object p2, p0

    .line 311
    invoke-virtual {p2, p3, v6, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lokio/internal/DefaultSocket;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result p4

    .line 330
    if-eqz p4, :cond_b

    .line 331
    .line 332
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p4

    .line 336
    add-int/lit8 v0, v2, 0x1

    .line 337
    .line 338
    if-ltz v2, :cond_a

    .line 339
    .line 340
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 341
    .line 342
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_9

    .line 347
    .line 348
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 349
    .line 350
    .line 351
    move-result-object p4

    .line 352
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;

    .line 356
    .line 357
    invoke-static {p4, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 358
    .line 359
    .line 360
    move-result p4

    .line 361
    if-nez p4, :cond_9

    .line 362
    .line 363
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object p4

    .line 367
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p4

    .line 371
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 372
    .line 373
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 374
    .line 375
    .line 376
    move-result-object p4

    .line 377
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object p4

    .line 381
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p4

    .line 385
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 386
    .line 387
    :cond_9
    move v2, v0

    .line 388
    goto :goto_3

    .line 389
    :cond_a
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 390
    .line 391
    .line 392
    throw v3

    .line 393
    :cond_b
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 394
    .line 395
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 400
    .line 401
    .line 402
    return-object p2

    .line 403
    :cond_c
    :goto_4
    return-object p1

    .line 404
    :cond_d
    move-object p2, p0

    .line 405
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    if-eqz p0, :cond_e

    .line 410
    .line 411
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    return-object p0

    .line 419
    :cond_e
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 428
    .line 429
    .line 430
    move-result-object p4

    .line 431
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    if-ne p1, p4, :cond_f

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_f
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 445
    .line 446
    if-ne p1, v1, :cond_10

    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_10
    if-ne p4, v1, :cond_11

    .line 450
    .line 451
    move-object p4, p1

    .line 452
    :cond_11
    :goto_5
    if-eqz p3, :cond_12

    .line 453
    .line 454
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    if-nez p1, :cond_13

    .line 459
    .line 460
    :cond_12
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 461
    .line 462
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    if-ne p1, p4, :cond_14

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_14
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 469
    .line 470
    if-ne p1, p3, :cond_15

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_15
    if-ne p4, p3, :cond_16

    .line 474
    .line 475
    move-object p4, p3

    .line 476
    :cond_16
    :goto_6
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 481
    .line 482
    .line 483
    move-result-object p3

    .line 484
    invoke-virtual {p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 485
    .line 486
    .line 487
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 504
    .line 505
    .line 506
    move-result p2

    .line 507
    if-eqz p2, :cond_17

    .line 508
    .line 509
    goto/16 :goto_d

    .line 510
    .line 511
    :cond_17
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 512
    .line 513
    .line 514
    move-result p2

    .line 515
    const/4 p3, 0x1

    .line 516
    if-eqz p2, :cond_18

    .line 517
    .line 518
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    goto/16 :goto_c

    .line 523
    .line 524
    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 532
    .line 533
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-eqz v1, :cond_19

    .line 541
    .line 542
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_19

    .line 547
    .line 548
    goto/16 :goto_c

    .line 549
    .line 550
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .line 554
    .line 555
    iget-object v0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 558
    .line 559
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    :cond_1a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    if-eqz v4, :cond_23

    .line 575
    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    check-cast v4, Ljava/lang/Number;

    .line 581
    .line 582
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    .line 587
    .line 588
    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 593
    .line 594
    iget-object v6, p2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    .line 595
    .line 596
    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 601
    .line 602
    const/4 v6, 0x2

    .line 603
    if-nez v5, :cond_1f

    .line 604
    .line 605
    if-eqz v4, :cond_1e

    .line 606
    .line 607
    if-nez v5, :cond_1b

    .line 608
    .line 609
    goto/16 :goto_b

    .line 610
    .line 611
    :cond_1b
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 612
    .line 613
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 614
    .line 615
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 616
    .line 617
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 624
    .line 625
    .line 626
    move-result v8

    .line 627
    if-eqz v8, :cond_1c

    .line 628
    .line 629
    move-object v4, v5

    .line 630
    goto :goto_8

    .line 631
    :cond_1c
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 632
    .line 633
    .line 634
    move-result v8

    .line 635
    if-eqz v8, :cond_1d

    .line 636
    .line 637
    goto :goto_8

    .line 638
    :cond_1d
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 639
    .line 640
    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 641
    .line 642
    aput-object v4, v6, v2

    .line 643
    .line 644
    aput-object v5, v6, p3

    .line 645
    .line 646
    invoke-direct {v8, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 647
    .line 648
    .line 649
    move-object v4, v8

    .line 650
    :goto_8
    invoke-direct {v7, v4}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 651
    .line 652
    .line 653
    move-object v4, v7

    .line 654
    goto :goto_b

    .line 655
    :cond_1e
    move-object v4, v3

    .line 656
    goto :goto_b

    .line 657
    :cond_1f
    if-nez v4, :cond_20

    .line 658
    .line 659
    goto :goto_a

    .line 660
    :cond_20
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 661
    .line 662
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 663
    .line 664
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 665
    .line 666
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    if-eqz v8, :cond_21

    .line 677
    .line 678
    move-object v5, v4

    .line 679
    goto :goto_9

    .line 680
    :cond_21
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    if-eqz v8, :cond_22

    .line 685
    .line 686
    goto :goto_9

    .line 687
    :cond_22
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 688
    .line 689
    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 690
    .line 691
    aput-object v5, v6, v2

    .line 692
    .line 693
    aput-object v4, v6, p3

    .line 694
    .line 695
    invoke-direct {v8, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 696
    .line 697
    .line 698
    move-object v5, v8

    .line 699
    :goto_9
    invoke-direct {v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 700
    .line 701
    .line 702
    move-object v5, v7

    .line 703
    :goto_a
    move-object v4, v5

    .line 704
    :goto_b
    if-eqz v4, :cond_1a

    .line 705
    .line 706
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    goto/16 :goto_7

    .line 710
    .line 711
    :cond_23
    invoke-static {v1}, Lokhttp3/FormBody$Builder;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 712
    .line 713
    .line 714
    move-result-object p1

    .line 715
    :goto_c
    invoke-static {p0, v3, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    :goto_d
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 720
    .line 721
    invoke-direct {p1, p0, p4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 722
    .line 723
    .line 724
    return-object p1

    .line 725
    :cond_24
    new-instance p0, Ljava/lang/AssertionError;

    .line 726
    .line 727
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    .line 728
    .line 729
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string p3, "Too deep recursion while expanding type alias "

    .line 736
    .line 737
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    throw p0
.end method

.method public substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lokio/internal/DefaultSocket;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    add-int/lit8 v6, v3, 0x1

    .line 37
    .line 38
    if-ltz v3, :cond_1

    .line 39
    .line 40
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 41
    .line 42
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 51
    .line 52
    add-int/lit8 v5, p3, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, v4, p2, v3, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 66
    .line 67
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v5, v3, v7}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 88
    .line 89
    .line 90
    move-object v3, v5

    .line 91
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move v3, v6

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 97
    .line 98
    .line 99
    throw v5

    .line 100
    :cond_2
    const/4 p0, 0x2

    .line 101
    invoke-static {p1, v2, v5, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

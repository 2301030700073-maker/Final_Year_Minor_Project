.class public abstract Landroidx/room/Room;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/text/android/selection/SegmentFinder;


# static fields
.field public static final LeadingSpace:F = 24.0f

.field public static final TrailingSpace:F = 24.0f

.field public static _cache:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/room/Room;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 9

    .line 1
    const v0, -0x704a306d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p5

    .line 17
    and-int/lit8 v1, p6, 0x2

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    or-int/lit8 v0, v0, 0x30

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/16 v2, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v0, v2

    .line 36
    :goto_2
    and-int/lit8 v2, p6, 0x4

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    or-int/lit16 v0, v0, 0x180

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_3
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    const/16 v3, 0x100

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/16 v3, 0x80

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v3

    .line 55
    :goto_4
    and-int/lit16 v0, v0, 0x493

    .line 56
    .line 57
    const/16 v3, 0x492

    .line 58
    .line 59
    if-ne v0, v3, :cond_6

    .line 60
    .line 61
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 69
    .line 70
    .line 71
    :goto_5
    move v4, p1

    .line 72
    move v5, p2

    .line 73
    goto :goto_8

    .line 74
    :cond_6
    :goto_6
    const/4 v0, 0x0

    .line 75
    if-eqz v1, :cond_7

    .line 76
    .line 77
    move p1, v0

    .line 78
    :cond_7
    if-eqz v2, :cond_8

    .line 79
    .line 80
    move p2, v0

    .line 81
    :cond_8
    sget-object v1, Landroidx/glance/layout/ColumnKt$Column$1;->INSTANCE:Landroidx/glance/layout/ColumnKt$Column$1;

    .line 82
    .line 83
    const v2, 0x227c4e56

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 87
    .line 88
    .line 89
    const v2, -0x20ad3f64

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p4, Landroidx/compose/runtime/GapComposer;->applier:Landroidx/compose/runtime/AbstractApplier;

    .line 96
    .line 97
    instance-of v2, v2, Landroidx/glance/Applier;

    .line 98
    .line 99
    if-eqz v2, :cond_b

    .line 100
    .line 101
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startNode()V

    .line 102
    .line 103
    .line 104
    iget-boolean v2, p4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 105
    .line 106
    if-eqz v2, :cond_9

    .line 107
    .line 108
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 113
    .line 114
    .line 115
    :goto_7
    sget-object v1, Landroidx/glance/layout/BoxKt$Box$2$1;->INSTANCE$2:Landroidx/glance/layout/BoxKt$Box$2$1;

    .line 116
    .line 117
    invoke-static {p4, p0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Landroidx/glance/layout/Alignment$Horizontal;

    .line 121
    .line 122
    invoke-direct {v1, p2}, Landroidx/glance/layout/Alignment$Horizontal;-><init>(I)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Landroidx/glance/layout/BoxKt$Box$2$1;->INSTANCE$3:Landroidx/glance/layout/BoxKt$Box$2$1;

    .line 126
    .line 127
    invoke-static {p4, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroidx/glance/layout/Alignment$Vertical;

    .line 131
    .line 132
    invoke-direct {v1, p1}, Landroidx/glance/layout/Alignment$Vertical;-><init>(I)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Landroidx/glance/layout/BoxKt$Box$2$1;->INSTANCE$4:Landroidx/glance/layout/BoxKt$Box$2$1;

    .line 136
    .line 137
    invoke-static {p4, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x36

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-object v2, Landroidx/glance/layout/ColumnScopeImplInstance;->INSTANCE:Landroidx/glance/layout/ColumnScopeImplInstance;

    .line 147
    .line 148
    invoke-virtual {p3, v2, p4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const/4 v1, 0x1

    .line 152
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :goto_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    new-instance v2, Landroidx/glance/layout/ColumnKt$Column$4;

    .line 169
    .line 170
    move-object v3, p0

    .line 171
    move-object v6, p3

    .line 172
    move v7, p5

    .line 173
    move v8, p6

    .line 174
    invoke-direct/range {v2 .. v8}, Landroidx/glance/layout/ColumnKt$Column$4;-><init>(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 175
    .line 176
    .line 177
    iput-object v2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    :cond_a
    return-void

    .line 180
    :cond_b
    invoke-static {}, Landroidx/compose/runtime/Updater;->invalidApplier()V

    .line 181
    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    throw p0
.end method

.method public static final Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/ui/unit/DensityWithConverter;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Landroidx/compose/ui/unit/LinearFontScaleConverter;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/LinearFontScaleConverter;-><init>(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/ui/unit/DensityWithConverter;-><init>(FFLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public static appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Character;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final appendPlaceholders(ILjava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_1

    .line 3
    .line 4
    const-string v1, "?"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    add-int/lit8 v1, p0, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public static varargs arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1, v0}, Landroidx/room/Room;->rangeCheck$CollectionsKt__CollectionsKt(II)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-gt v1, v0, :cond_2

    .line 19
    .line 20
    add-int v2, v1, v0

    .line 21
    .line 22
    ushr-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Comparable;

    .line 29
    .line 30
    invoke-static {v3, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-gez v3, :cond_0

    .line 35
    .line 36
    add-int/lit8 v1, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-lez v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v0, v2, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v2

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    neg-int p0, v1

    .line 48
    return p0
.end method

.method public static final boxTypeIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 7
    .line 8
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move-object p1, p0

    .line 13
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 14
    .line 15
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;->jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->byFqNameWithoutInnerClasses(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->getInternalName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    return-object p0
.end method

.method public static build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/collections/builders/ListBuilder;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable$1()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    .line 11
    .line 12
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lkotlin/collections/builders/ListBuilder;->Empty:Lkotlin/collections/builders/ListBuilder;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final copyValueParameters(Ljava/util/ArrayList;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    invoke-static/range {p0 .. p1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lkotlin/Pair;

    .line 40
    .line 41
    iget-object v3, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v10, v3

    .line 44
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 45
    .line 46
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 49
    .line 50
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 51
    .line 52
    iget v7, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->declaresDefaultValue()Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    iget-boolean v12, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->isCrossinline:Z

    .line 70
    .line 71
    iget-boolean v13, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->isNoinline:Z

    .line 72
    .line 73
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 74
    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    sget v3, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->$r8$clinit:I

    .line 78
    .line 79
    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v10}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayElementType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_1
    move-object v14, v3

    .line 95
    goto :goto_2

    .line 96
    :cond_0
    const/4 v3, 0x0

    .line 97
    goto :goto_1

    .line 98
    :goto_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    move-object/from16 v5, p2

    .line 107
    .line 108
    invoke-direct/range {v4 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    return-object v1
.end method

.method public static createListBuilder()Lkotlin/collections/builders/ListBuilder;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-string v0, ":memory:"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/room/RoomDatabase$Builder;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string p0, "Cannot build a database with the special name \':memory:\'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    const-string p0, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public static findChildViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static final getCenter-uvyYCjk(J)J
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    const-wide v3, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr p0, v3

    .line 19
    long-to-int p0, p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    div-float/2addr p0, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-long v1, p1

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-long p0, p0

    .line 35
    shl-long v0, v1, v0

    .line 36
    .line 37
    and-long/2addr p0, v3

    .line 38
    or-long/2addr p0, v0

    .line 39
    return-wide p0
.end method

.method public static final getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getQualifiedClassName(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->isLocalClassName(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->fromString(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 3

    .line 1
    new-instance v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/concurrent/futures/ResolvableFuture;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 12
    .line 13
    new-instance v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;->attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iput-object p0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v1

    .line 38
    :goto_0
    iget-object v0, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr p0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v2, p0, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;
    .locals 3

    .line 1
    sget-object v0, Landroidx/navigation/NavControllerViewModelKt;->FACTORY:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0, v1}, Lcoil3/ImageLoader$Builder;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 14
    .line 15
    .line 16
    const-class p0, Landroidx/navigation/NavControllerViewModel;

    .line 17
    .line 18
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0, p0}, Lcoil3/ImageLoader$Builder;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/navigation/NavControllerViewModel;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static getLastIndex(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    add-int/lit8 p0, p0, -0x1

    .line 9
    .line 10
    return p0
.end method

.method public static final getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->guessByFirstCharacter(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final getParentJavaStaticClassScope(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->$r8$clinit:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isAnyOrNullableAny(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 50
    .line 51
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 58
    .line 59
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v0, v1

    .line 72
    :goto_0
    if-nez v0, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    instance-of v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    .line 80
    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    move-object v1, p0

    .line 84
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    .line 85
    .line 86
    :cond_4
    if-nez v1, :cond_5

    .line 87
    .line 88
    invoke-static {v0}, Landroidx/room/Room;->getParentJavaStaticClassScope(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_5
    return-object v1
.end method

.method public static final getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const v0, 0x7f090743

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v0, p0, Landroid/view/ViewParent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p0, Landroid/view/ViewParent;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static final indexOfMaxValue([I)I
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/high16 v2, -0x80000000

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    .line 8
    aget v4, p0, v3

    .line 9
    .line 10
    if-ge v2, v4, :cond_0

    .line 11
    .line 12
    move v1, v3

    .line 13
    move v2, v4

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method public static indexOfMinValue$default([I)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    const v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v0, :cond_1

    .line 8
    .line 9
    aget v4, p0, v3

    .line 10
    .line 11
    const v5, -0x7fffffff

    .line 12
    .line 13
    .line 14
    if-gt v5, v4, :cond_0

    .line 15
    .line 16
    if-ge v4, v2, :cond_0

    .line 17
    .line 18
    move v1, v3

    .line 19
    move v2, v4

    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static final indexSegment(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static final insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    aput-object p3, v0, p1

    .line 22
    .line 23
    return-object v0
.end method

.method public static final isAccessible(Lkotlin/reflect/KCallable;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lkotlin/reflect/KProperty;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_14

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/reflect/KProperty;->getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v1

    .line 39
    :goto_1
    if-eqz v0, :cond_14

    .line 40
    .line 41
    check-cast p0, Lkotlin/reflect/KMutableProperty;

    .line 42
    .line 43
    invoke-interface {p0}, Lkotlin/reflect/KMutableProperty;->getSetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move p0, v1

    .line 59
    :goto_2
    if-eqz p0, :cond_14

    .line 60
    .line 61
    goto/16 :goto_f

    .line 62
    .line 63
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    check-cast p0, Lkotlin/reflect/KProperty;

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move v0, v1

    .line 81
    :goto_3
    if-eqz v0, :cond_14

    .line 82
    .line 83
    invoke-interface {p0}, Lkotlin/reflect/KProperty;->getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    move p0, v1

    .line 99
    :goto_4
    if-eqz p0, :cond_14

    .line 100
    .line 101
    goto/16 :goto_f

    .line 102
    .line 103
    :cond_6
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;

    .line 104
    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    move-object v0, p0

    .line 108
    check-cast v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;

    .line 109
    .line 110
    invoke-interface {v0}, Lkotlin/reflect/KProperty$Accessor;->getProperty()Lkotlin/reflect/KProperty;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    move v0, v1

    .line 126
    :goto_5
    if-eqz v0, :cond_14

    .line 127
    .line 128
    check-cast p0, Lkotlin/reflect/KFunction;

    .line 129
    .line 130
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    move p0, v1

    .line 142
    :goto_6
    if-eqz p0, :cond_14

    .line 143
    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_9
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;

    .line 147
    .line 148
    if-eqz v0, :cond_c

    .line 149
    .line 150
    move-object v0, p0

    .line 151
    check-cast v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;

    .line 152
    .line 153
    invoke-interface {v0}, Lkotlin/reflect/KProperty$Accessor;->getProperty()Lkotlin/reflect/KProperty;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    goto :goto_7

    .line 168
    :cond_a
    move v0, v1

    .line 169
    :goto_7
    if-eqz v0, :cond_14

    .line 170
    .line 171
    check-cast p0, Lkotlin/reflect/KFunction;

    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-eqz p0, :cond_b

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    goto :goto_8

    .line 184
    :cond_b
    move p0, v1

    .line 185
    :goto_8
    if-eqz p0, :cond_14

    .line 186
    .line 187
    goto/16 :goto_f

    .line 188
    .line 189
    :cond_c
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    .line 190
    .line 191
    if-eqz v0, :cond_15

    .line 192
    .line 193
    move-object v0, p0

    .line 194
    check-cast v0, Lkotlin/reflect/KFunction;

    .line 195
    .line 196
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_d

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    goto :goto_9

    .line 207
    :cond_d
    move v2, v1

    .line 208
    :goto_9
    if-eqz v2, :cond_14

    .line 209
    .line 210
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    const/4 v2, 0x0

    .line 215
    if-eqz p0, :cond_e

    .line 216
    .line 217
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    if-eqz p0, :cond_e

    .line 222
    .line 223
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    goto :goto_a

    .line 228
    :cond_e
    move-object p0, v2

    .line 229
    :goto_a
    instance-of v3, p0, Ljava/lang/reflect/AccessibleObject;

    .line 230
    .line 231
    if-eqz v3, :cond_f

    .line 232
    .line 233
    check-cast p0, Ljava/lang/reflect/AccessibleObject;

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_f
    move-object p0, v2

    .line 237
    :goto_b
    if-eqz p0, :cond_10

    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    goto :goto_c

    .line 244
    :cond_10
    move p0, v1

    .line 245
    :goto_c
    if-eqz p0, :cond_14

    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    if-eqz p0, :cond_11

    .line 252
    .line 253
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    if-eqz p0, :cond_11

    .line 258
    .line 259
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    goto :goto_d

    .line 264
    :cond_11
    move-object p0, v2

    .line 265
    :goto_d
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    .line 266
    .line 267
    if-eqz v0, :cond_12

    .line 268
    .line 269
    move-object v2, p0

    .line 270
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 271
    .line 272
    :cond_12
    if-eqz v2, :cond_13

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    goto :goto_e

    .line 279
    :cond_13
    move p0, v1

    .line 280
    :goto_e
    if-eqz p0, :cond_14

    .line 281
    .line 282
    :goto_f
    return v1

    .line 283
    :cond_14
    const/4 p0, 0x0

    .line 284
    return p0

    .line 285
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 286
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v2, "Unknown callable: "

    .line 290
    .line 291
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    const-string v2, " ("

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const/16 p0, 0x29

    .line 310
    .line 311
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0
.end method

.method public static isTrue(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lorg/jsoup/helper/ValidationException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public static isTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Must be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static listOf(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 18
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 16
    .line 17
    return-object p0
.end method

.method public static listOfNotNull(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final lottieComposition(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    instance-of v2, v1, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 34
    .line 35
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x1

    .line 40
    const/4 v9, 0x0

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    if-eq v4, v8, :cond_3

    .line 44
    .line 45
    if-eq v4, v7, :cond_2

    .line 46
    .line 47
    if-ne v4, v6, :cond_1

    .line 48
    .line 49
    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :cond_2
    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 66
    .line 67
    iget-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v7, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v8, Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_3
    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v10, Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object v11, v0

    .line 96
    move-object v0, v4

    .line 97
    move-object v4, v8

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v1, p1

    .line 103
    .line 104
    move-object/from16 v4, p5

    .line 105
    .line 106
    invoke-static {v0, v1, v4}, Landroidx/room/Room;->lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    move-object/from16 v4, p2

    .line 113
    .line 114
    iput-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    .line 115
    .line 116
    move-object/from16 v10, p3

    .line 117
    .line 118
    iput-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    .line 119
    .line 120
    move-object/from16 v11, p4

    .line 121
    .line 122
    iput-object v11, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    .line 123
    .line 124
    iput v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 125
    .line 126
    new-instance v12, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 127
    .line 128
    invoke-static {v2}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    invoke-direct {v12, v8, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 136
    .line 137
    .line 138
    new-instance v13, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;

    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-direct {v13, v12, v14}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v13}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v13, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;

    .line 148
    .line 149
    invoke-direct {v13, v12, v8}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v13}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-ne v1, v3, :cond_5

    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_5
    move-object v15, v10

    .line 164
    move-object v10, v0

    .line 165
    move-object v0, v15

    .line 166
    :goto_1
    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    .line 167
    .line 168
    iput-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v11, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    .line 173
    .line 174
    iput-object v1, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    .line 175
    .line 176
    iput v7, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 177
    .line 178
    iget-object v7, v1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_7

    .line 185
    .line 186
    :cond_6
    move-object v4, v5

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 189
    .line 190
    sget-object v7, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 191
    .line 192
    new-instance v8, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 193
    .line 194
    invoke-direct {v8, v1, v10, v4, v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-ne v4, v3, :cond_6

    .line 202
    .line 203
    :goto_2
    if-ne v4, v3, :cond_8

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_8
    move-object v7, v0

    .line 207
    move-object v0, v1

    .line 208
    move-object v8, v10

    .line 209
    move-object v4, v11

    .line 210
    :goto_3
    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    .line 213
    .line 214
    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    .line 215
    .line 216
    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    .line 217
    .line 218
    iput v6, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    .line 219
    .line 220
    iget-object v1, v0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_9

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 230
    .line 231
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 232
    .line 233
    new-instance v6, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadFontsFromAssets$2;

    .line 234
    .line 235
    const/4 v9, 0x0

    .line 236
    move-object/from16 p1, v0

    .line 237
    .line 238
    move-object/from16 p4, v4

    .line 239
    .line 240
    move-object/from16 p0, v6

    .line 241
    .line 242
    move-object/from16 p3, v7

    .line 243
    .line 244
    move-object/from16 p2, v8

    .line 245
    .line 246
    move-object/from16 p5, v9

    .line 247
    .line 248
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadFontsFromAssets$2;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 249
    .line 250
    .line 251
    move-object/from16 v4, p0

    .line 252
    .line 253
    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-ne v1, v3, :cond_a

    .line 258
    .line 259
    move-object v5, v1

    .line 260
    :cond_a
    :goto_4
    if-ne v5, v3, :cond_b

    .line 261
    .line 262
    :goto_5
    return-object v3

    .line 263
    :cond_b
    return-object v0
.end method

.method public static final lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 4

    .line 1
    instance-of p1, p1, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 5
    .line 6
    const-string p1, "__LottieInternalDefaultCacheKey__"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    sget-object p1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const-string p2, "asset_lottie/explore_feed_building.lottie"

    .line 25
    .line 26
    invoke-direct {p1, v1, p0, p2}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    .line 30
    .line 31
    sget-object v3, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 40
    .line 41
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/LottieTask;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    .line 55
    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    invoke-direct {v3, p2, p1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    .line 78
    .line 79
    invoke-direct {v2, p2, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-ne p0, v1, :cond_3

    .line 99
    .line 100
    invoke-static {}, Lcom/airbnb/lottie/LottieCompositionFactory;->notifyTaskCacheIdleListeners()V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-object v0

    .line 104
    :cond_4
    sget-object p1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {p1, v1, p0, p2}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    .line 116
    .line 117
    if-nez p2, :cond_5

    .line 118
    .line 119
    move-object v3, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    sget-object v3, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 122
    .line 123
    invoke-virtual {v3, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :goto_0
    if-eqz v3, :cond_6

    .line 128
    .line 129
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 130
    .line 131
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/LottieTask;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    if-eqz p2, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    .line 147
    .line 148
    :cond_7
    if-eqz v0, :cond_8

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_8
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 152
    .line 153
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 154
    .line 155
    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 161
    .line 162
    .line 163
    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    invoke-direct {v3, p2, p1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 169
    .line 170
    .line 171
    new-instance v2, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    .line 172
    .line 173
    invoke-direct {v2, p2, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_9

    .line 184
    .line 185
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-ne p0, v1, :cond_9

    .line 193
    .line 194
    invoke-static {}, Lcom/airbnb/lottie/LottieCompositionFactory;->notifyTaskCacheIdleListeners()V

    .line 195
    .line 196
    .line 197
    :cond_9
    return-object v0

    .line 198
    :cond_a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 199
    .line 200
    .line 201
    return-object v0
.end method

.method public static final maxInRange-jy6DScQ(J[I)I
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p0, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p0, v1

    .line 12
    long-to-int p0, p0

    .line 13
    const/high16 p1, -0x80000000

    .line 14
    .line 15
    :goto_0
    if-ge v0, p0, :cond_0

    .line 16
    .line 17
    aget v1, p2, v0

    .line 18
    .line 19
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return p1
.end method

.method public static final maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_89A:Lokio/ByteString;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_87A:Lokio/ByteString;

    .line 18
    .line 19
    invoke-interface {p1, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object p0

    .line 27
    :cond_1
    :goto_0
    new-instance p1, Lcoil3/gif/internal/FrameDelayRewritingSource;

    .line 28
    .line 29
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Lcoil3/gif/internal/FrameDelayRewritingSource;-><init>(Lokio/BufferedSource;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lokio/RealBufferedSource;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;)Lcoil3/decode/SourceImageSource;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_2
    return-object p0
.end method

.method public static final measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .locals 66

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 10
    .line 11
    iget-object v11, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 12
    .line 13
    iget-object v5, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 14
    .line 15
    iget-object v6, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->pinnedItems:Ljava/util/List;

    .line 16
    .line 17
    iget v7, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->afterContentPadding:I

    .line 18
    .line 19
    iget v8, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisSpacing:I

    .line 20
    .line 21
    iget-object v9, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->approachVisibleItems:Ljava/util/List;

    .line 22
    .line 23
    iget-boolean v10, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    .line 24
    .line 25
    iget-object v12, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 26
    .line 27
    iget v13, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    .line 28
    .line 29
    iget v14, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisAvailableSize:I

    .line 30
    .line 31
    iget v15, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->beforeContentPadding:I

    .line 32
    .line 33
    move-object/from16 v16, v5

    .line 34
    .line 35
    iget-object v5, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    .line 36
    .line 37
    move/from16 v18, v10

    .line 38
    .line 39
    move-object/from16 v17, v11

    .line 40
    .line 41
    iget-wide v10, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->constraints:J

    .line 42
    .line 43
    move/from16 v19, v7

    .line 44
    .line 45
    iget-object v7, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneInfo:Lokhttp3/internal/http/StatusLine;

    .line 46
    .line 47
    move-object/from16 v20, v9

    .line 48
    .line 49
    iget-object v9, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 50
    .line 51
    move-object/from16 v21, v4

    .line 52
    .line 53
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->getItemCount()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    move-object/from16 v22, v6

    .line 58
    .line 59
    iget-object v6, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;

    .line 60
    .line 61
    move-object/from16 v23, v6

    .line 62
    .line 63
    sget-object v6, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 64
    .line 65
    move-wide/from16 v24, v10

    .line 66
    .line 67
    sget-object v26, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 68
    .line 69
    const/16 v27, 0x20

    .line 70
    .line 71
    const-wide v28, 0xffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    if-lez v4, :cond_0

    .line 77
    .line 78
    if-nez v13, :cond_1

    .line 79
    .line 80
    :cond_0
    move-object v9, v1

    .line 81
    move/from16 v45, v4

    .line 82
    .line 83
    move-object v2, v6

    .line 84
    move/from16 v42, v14

    .line 85
    .line 86
    move-wide/from16 v62, v24

    .line 87
    .line 88
    move-object/from16 v24, v17

    .line 89
    .line 90
    goto/16 :goto_76

    .line 91
    .line 92
    :cond_1
    array-length v10, v2

    .line 93
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([II)[I

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    array-length v2, v3

    .line 98
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    array-length v2, v10

    .line 103
    const/4 v3, -0x1

    .line 104
    add-int/2addr v2, v3

    .line 105
    if-ltz v2, :cond_b

    .line 106
    .line 107
    :goto_0
    add-int/lit8 v31, v2, -0x1

    .line 108
    .line 109
    :goto_1
    aget v3, v10, v2

    .line 110
    .line 111
    if-ge v3, v4, :cond_2

    .line 112
    .line 113
    invoke-virtual {v7, v3, v2}, Lokhttp3/internal/http/StatusLine;->assignedToLane(II)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    :cond_2
    move-object/from16 v33, v6

    .line 120
    .line 121
    move-object/from16 v34, v12

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_3
    aget v3, v10, v2

    .line 125
    .line 126
    move-object/from16 v33, v6

    .line 127
    .line 128
    if-ltz v3, :cond_9

    .line 129
    .line 130
    iget-object v6, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;

    .line 131
    .line 132
    iget-object v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;->spanProvider:Landroidx/appcompat/widget/PopupMenu$1;

    .line 133
    .line 134
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/PopupMenu$1;->isFullSpan(I)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_9

    .line 139
    .line 140
    invoke-virtual {v7, v3}, Lokhttp3/internal/http/StatusLine;->getLane(I)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    move-object/from16 v34, v12

    .line 145
    .line 146
    const/4 v12, -0x2

    .line 147
    if-ne v6, v12, :cond_8

    .line 148
    .line 149
    array-length v6, v10

    .line 150
    const/4 v12, 0x0

    .line 151
    :goto_2
    if-ge v12, v6, :cond_5

    .line 152
    .line 153
    move/from16 p3, v6

    .line 154
    .line 155
    aget v6, v10, v12

    .line 156
    .line 157
    if-ne v6, v3, :cond_4

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 161
    .line 162
    move/from16 v6, p3

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 v12, -0x1

    .line 166
    :goto_3
    add-int/lit8 v6, v12, 0x1

    .line 167
    .line 168
    move/from16 p3, v12

    .line 169
    .line 170
    if-gt v6, v2, :cond_7

    .line 171
    .line 172
    :goto_4
    aget v12, v10, v6

    .line 173
    .line 174
    if-ne v12, v3, :cond_6

    .line 175
    .line 176
    invoke-virtual {v7, v3, v6}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    aput v12, v10, v6

    .line 181
    .line 182
    :cond_6
    if-eq v6, v2, :cond_7

    .line 183
    .line 184
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    move/from16 v2, p3

    .line 188
    .line 189
    :cond_8
    invoke-virtual {v7, v3, v2}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    move-object/from16 v34, v12

    .line 194
    .line 195
    :goto_5
    if-gez v31, :cond_a

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_a
    move/from16 v2, v31

    .line 199
    .line 200
    move-object/from16 v6, v33

    .line 201
    .line 202
    move-object/from16 v12, v34

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :goto_6
    aget v3, v10, v2

    .line 206
    .line 207
    invoke-virtual {v7, v3, v2}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    aput v3, v10, v2

    .line 212
    .line 213
    move-object/from16 v6, v33

    .line 214
    .line 215
    move-object/from16 v12, v34

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_b
    move-object/from16 v33, v6

    .line 219
    .line 220
    move-object/from16 v34, v12

    .line 221
    .line 222
    :goto_7
    neg-int v2, v0

    .line 223
    invoke-static {v11, v2}, Landroidx/room/Room;->offsetBy([II)V

    .line 224
    .line 225
    .line 226
    new-array v3, v13, [Lkotlin/collections/ArrayDeque;

    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    :goto_8
    if-ge v2, v13, :cond_c

    .line 230
    .line 231
    new-instance v6, Lkotlin/collections/ArrayDeque;

    .line 232
    .line 233
    const/16 v12, 0x10

    .line 234
    .line 235
    invoke-direct {v6, v12}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 236
    .line 237
    .line 238
    aput-object v6, v3, v2

    .line 239
    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_c
    neg-int v12, v15

    .line 244
    invoke-static {v11, v12}, Landroidx/room/Room;->offsetBy([II)V

    .line 245
    .line 246
    .line 247
    const/4 v2, 0x0

    .line 248
    :goto_9
    array-length v6, v10

    .line 249
    const/4 v0, 0x0

    .line 250
    :goto_a
    const/16 v31, 0x0

    .line 251
    .line 252
    move/from16 p3, v2

    .line 253
    .line 254
    if-ge v0, v6, :cond_16

    .line 255
    .line 256
    aget v35, v10, v0

    .line 257
    .line 258
    aget v2, v11, v0

    .line 259
    .line 260
    move/from16 v37, v0

    .line 261
    .line 262
    neg-int v0, v8

    .line 263
    move-object/from16 v38, v3

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-ge v2, v0, :cond_15

    .line 271
    .line 272
    if-lez v35, :cond_15

    .line 273
    .line 274
    invoke-static {v10}, Landroidx/room/Room;->indexOfMaxValue([I)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    aget v2, v10, v0

    .line 279
    .line 280
    array-length v3, v11

    .line 281
    const/4 v6, 0x0

    .line 282
    :goto_b
    if-ge v6, v3, :cond_e

    .line 283
    .line 284
    move/from16 v35, v3

    .line 285
    .line 286
    aget v3, v10, v6

    .line 287
    .line 288
    move/from16 v37, v6

    .line 289
    .line 290
    aget v6, v10, v0

    .line 291
    .line 292
    if-eq v3, v6, :cond_d

    .line 293
    .line 294
    aget v3, v11, v37

    .line 295
    .line 296
    aget v6, v11, v0

    .line 297
    .line 298
    if-ge v3, v6, :cond_d

    .line 299
    .line 300
    aput v6, v11, v37

    .line 301
    .line 302
    :cond_d
    add-int/lit8 v6, v37, 0x1

    .line 303
    .line 304
    move/from16 v3, v35

    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_e
    invoke-virtual {v7, v2, v0}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-gez v2, :cond_f

    .line 312
    .line 313
    :goto_c
    move/from16 v35, v4

    .line 314
    .line 315
    move/from16 v40, v8

    .line 316
    .line 317
    move-object/from16 v39, v9

    .line 318
    .line 319
    const/4 v3, 0x0

    .line 320
    goto/16 :goto_11

    .line 321
    .line 322
    :cond_f
    move/from16 v35, v4

    .line 323
    .line 324
    invoke-virtual {v1, v9, v2, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    move v0, v8

    .line 329
    move-object/from16 v39, v9

    .line 330
    .line 331
    and-long v8, v3, v28

    .line 332
    .line 333
    long-to-int v6, v8

    .line 334
    shr-long v8, v3, v27

    .line 335
    .line 336
    long-to-int v8, v8

    .line 337
    sub-int v9, v6, v8

    .line 338
    .line 339
    move/from16 v40, v0

    .line 340
    .line 341
    const/4 v0, 0x1

    .line 342
    if-eq v9, v0, :cond_10

    .line 343
    .line 344
    const/4 v0, -0x2

    .line 345
    goto :goto_d

    .line 346
    :cond_10
    move v0, v8

    .line 347
    :goto_d
    invoke-virtual {v7, v2, v0}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v3, v4, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v3, v4, v11}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    const/4 v4, 0x1

    .line 359
    if-eq v9, v4, :cond_11

    .line 360
    .line 361
    invoke-virtual {v7, v2}, Lokhttp3/internal/http/StatusLine;->getGaps(I)[I

    .line 362
    .line 363
    .line 364
    move-result-object v31

    .line 365
    :cond_11
    move/from16 v4, p3

    .line 366
    .line 367
    :goto_e
    if-ge v8, v6, :cond_14

    .line 368
    .line 369
    aput v2, v10, v8

    .line 370
    .line 371
    if-nez v31, :cond_12

    .line 372
    .line 373
    const/4 v9, 0x0

    .line 374
    :goto_f
    move/from16 v37, v2

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_12
    aget v9, v31, v8

    .line 378
    .line 379
    goto :goto_f

    .line 380
    :goto_10
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 381
    .line 382
    add-int/2addr v2, v3

    .line 383
    add-int/2addr v2, v9

    .line 384
    aput v2, v11, v8

    .line 385
    .line 386
    add-int/2addr v2, v14

    .line 387
    if-gtz v2, :cond_13

    .line 388
    .line 389
    const/4 v4, 0x1

    .line 390
    :cond_13
    add-int/lit8 v8, v8, 0x1

    .line 391
    .line 392
    move/from16 v2, v37

    .line 393
    .line 394
    goto :goto_e

    .line 395
    :cond_14
    move/from16 v0, p1

    .line 396
    .line 397
    move v2, v4

    .line 398
    move/from16 v4, v35

    .line 399
    .line 400
    move-object/from16 v3, v38

    .line 401
    .line 402
    move-object/from16 v9, v39

    .line 403
    .line 404
    move/from16 v8, v40

    .line 405
    .line 406
    goto/16 :goto_9

    .line 407
    .line 408
    :cond_15
    move/from16 v35, v4

    .line 409
    .line 410
    move/from16 v40, v8

    .line 411
    .line 412
    move-object/from16 v39, v9

    .line 413
    .line 414
    add-int/lit8 v0, v37, 0x1

    .line 415
    .line 416
    move/from16 v2, p3

    .line 417
    .line 418
    move/from16 v4, v35

    .line 419
    .line 420
    move-object/from16 v3, v38

    .line 421
    .line 422
    move-object/from16 v9, v39

    .line 423
    .line 424
    move/from16 v8, v40

    .line 425
    .line 426
    goto/16 :goto_a

    .line 427
    .line 428
    :cond_16
    move-object/from16 v38, v3

    .line 429
    .line 430
    const/4 v0, -0x1

    .line 431
    goto :goto_c

    .line 432
    :goto_11
    aget v2, v11, v3

    .line 433
    .line 434
    if-ge v2, v12, :cond_17

    .line 435
    .line 436
    sub-int v2, v12, v2

    .line 437
    .line 438
    invoke-static {v11, v2}, Landroidx/room/Room;->offsetBy([II)V

    .line 439
    .line 440
    .line 441
    sub-int v2, p1, v2

    .line 442
    .line 443
    goto :goto_12

    .line 444
    :cond_17
    move/from16 v2, p1

    .line 445
    .line 446
    :goto_12
    invoke-static {v11, v15}, Landroidx/room/Room;->offsetBy([II)V

    .line 447
    .line 448
    .line 449
    const/4 v4, -0x1

    .line 450
    if-ne v0, v4, :cond_18

    .line 451
    .line 452
    invoke-static {v10, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([II)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    :cond_18
    if-eq v0, v4, :cond_1b

    .line 457
    .line 458
    invoke-static {v10, v1, v11, v0}, Landroidx/room/Room;->measure$lambda$0$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_1b

    .line 463
    .line 464
    if-eqz p4, :cond_1b

    .line 465
    .line 466
    invoke-virtual {v7}, Lokhttp3/internal/http/StatusLine;->reset()V

    .line 467
    .line 468
    .line 469
    array-length v3, v10

    .line 470
    new-array v5, v3, [I

    .line 471
    .line 472
    const/4 v6, 0x0

    .line 473
    :goto_13
    if-ge v6, v3, :cond_19

    .line 474
    .line 475
    aput v4, v5, v6

    .line 476
    .line 477
    add-int/lit8 v6, v6, 0x1

    .line 478
    .line 479
    const/4 v4, -0x1

    .line 480
    goto :goto_13

    .line 481
    :cond_19
    array-length v3, v11

    .line 482
    new-array v4, v3, [I

    .line 483
    .line 484
    const/4 v6, 0x0

    .line 485
    :goto_14
    if-ge v6, v3, :cond_1a

    .line 486
    .line 487
    aget v7, v11, v0

    .line 488
    .line 489
    aput v7, v4, v6

    .line 490
    .line 491
    add-int/lit8 v6, v6, 0x1

    .line 492
    .line 493
    goto :goto_14

    .line 494
    :cond_1a
    const/4 v6, 0x0

    .line 495
    invoke-static {v1, v2, v5, v4, v6}, Landroidx/room/Room;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    return-object v0

    .line 500
    :cond_1b
    array-length v0, v10

    .line 501
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    array-length v3, v11

    .line 506
    new-array v4, v3, [I

    .line 507
    .line 508
    const/4 v6, 0x0

    .line 509
    :goto_15
    if-ge v6, v3, :cond_1c

    .line 510
    .line 511
    aget v8, v11, v6

    .line 512
    .line 513
    neg-int v8, v8

    .line 514
    aput v8, v4, v6

    .line 515
    .line 516
    add-int/lit8 v6, v6, 0x1

    .line 517
    .line 518
    goto :goto_15

    .line 519
    :cond_1c
    add-int v8, v12, v40

    .line 520
    .line 521
    add-int v6, v14, v19

    .line 522
    .line 523
    if-gez v6, :cond_1d

    .line 524
    .line 525
    const/4 v9, 0x0

    .line 526
    goto :goto_16

    .line 527
    :cond_1d
    move v9, v6

    .line 528
    :goto_16
    invoke-static {v0}, Landroidx/room/Room;->indexOfMinValue$default([I)I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    move/from16 v37, p3

    .line 533
    .line 534
    move/from16 p3, v12

    .line 535
    .line 536
    const/4 v12, 0x0

    .line 537
    :goto_17
    const v41, 0x7fffffff

    .line 538
    .line 539
    .line 540
    move/from16 p1, v2

    .line 541
    .line 542
    const/4 v2, -0x1

    .line 543
    if-eq v6, v2, :cond_25

    .line 544
    .line 545
    if-ge v12, v13, :cond_25

    .line 546
    .line 547
    aget v2, v0, v6

    .line 548
    .line 549
    move/from16 v42, v12

    .line 550
    .line 551
    array-length v12, v0

    .line 552
    move-object/from16 v43, v10

    .line 553
    .line 554
    move/from16 v44, v15

    .line 555
    .line 556
    move/from16 v15, v41

    .line 557
    .line 558
    const/4 v10, 0x0

    .line 559
    const/16 v41, -0x1

    .line 560
    .line 561
    :goto_18
    if-ge v10, v12, :cond_1f

    .line 562
    .line 563
    move/from16 v45, v10

    .line 564
    .line 565
    add-int/lit8 v10, v2, 0x1

    .line 566
    .line 567
    move/from16 v46, v12

    .line 568
    .line 569
    aget v12, v0, v45

    .line 570
    .line 571
    if-gt v10, v12, :cond_1e

    .line 572
    .line 573
    if-ge v12, v15, :cond_1e

    .line 574
    .line 575
    move v15, v12

    .line 576
    move/from16 v41, v45

    .line 577
    .line 578
    :cond_1e
    add-int/lit8 v10, v45, 0x1

    .line 579
    .line 580
    move/from16 v12, v46

    .line 581
    .line 582
    goto :goto_18

    .line 583
    :cond_1f
    add-int/lit8 v12, v42, 0x1

    .line 584
    .line 585
    if-ltz v2, :cond_24

    .line 586
    .line 587
    move-object v15, v11

    .line 588
    move-object/from16 v10, v39

    .line 589
    .line 590
    move/from16 v39, v12

    .line 591
    .line 592
    invoke-virtual {v1, v10, v2, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 593
    .line 594
    .line 595
    move-result-wide v11

    .line 596
    invoke-virtual {v5, v11, v12, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    move/from16 v42, v14

    .line 601
    .line 602
    move-object/from16 v45, v15

    .line 603
    .line 604
    and-long v14, v11, v28

    .line 605
    .line 606
    long-to-int v14, v14

    .line 607
    move-object v15, v0

    .line 608
    shr-long v0, v11, v27

    .line 609
    .line 610
    long-to-int v0, v0

    .line 611
    sub-int v1, v14, v0

    .line 612
    .line 613
    move/from16 v46, v0

    .line 614
    .line 615
    const/4 v0, 0x1

    .line 616
    if-eq v1, v0, :cond_20

    .line 617
    .line 618
    const/4 v0, -0x2

    .line 619
    goto :goto_19

    .line 620
    :cond_20
    move/from16 v0, v46

    .line 621
    .line 622
    :goto_19
    invoke-virtual {v7, v2, v0}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 623
    .line 624
    .line 625
    invoke-static {v11, v12, v4}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    move/from16 v11, v46

    .line 630
    .line 631
    :goto_1a
    if-ge v11, v14, :cond_21

    .line 632
    .line 633
    iget v12, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 634
    .line 635
    add-int/2addr v12, v0

    .line 636
    aput v12, v4, v11

    .line 637
    .line 638
    aput v2, v15, v11

    .line 639
    .line 640
    aget-object v12, v38, v11

    .line 641
    .line 642
    invoke-virtual {v12, v6}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    add-int/lit8 v11, v11, 0x1

    .line 646
    .line 647
    goto :goto_1a

    .line 648
    :cond_21
    if-ge v0, v8, :cond_22

    .line 649
    .line 650
    aget v0, v4, v46

    .line 651
    .line 652
    if-gt v0, v8, :cond_22

    .line 653
    .line 654
    const/4 v0, 0x0

    .line 655
    iput-boolean v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 656
    .line 657
    const/16 v37, 0x1

    .line 658
    .line 659
    :cond_22
    const/4 v0, 0x1

    .line 660
    if-eq v1, v0, :cond_23

    .line 661
    .line 662
    move-object/from16 v1, p0

    .line 663
    .line 664
    move/from16 v2, p1

    .line 665
    .line 666
    move-object/from16 v39, v10

    .line 667
    .line 668
    move v12, v13

    .line 669
    move-object v0, v15

    .line 670
    move/from16 v6, v41

    .line 671
    .line 672
    move/from16 v14, v42

    .line 673
    .line 674
    move-object/from16 v10, v43

    .line 675
    .line 676
    move/from16 v15, v44

    .line 677
    .line 678
    move-object/from16 v11, v45

    .line 679
    .line 680
    goto/16 :goto_17

    .line 681
    .line 682
    :cond_23
    move-object/from16 v1, p0

    .line 683
    .line 684
    move/from16 v2, p1

    .line 685
    .line 686
    move-object v0, v15

    .line 687
    move/from16 v12, v39

    .line 688
    .line 689
    move/from16 v6, v41

    .line 690
    .line 691
    move/from16 v14, v42

    .line 692
    .line 693
    move/from16 v15, v44

    .line 694
    .line 695
    move-object/from16 v11, v45

    .line 696
    .line 697
    :goto_1b
    move-object/from16 v39, v10

    .line 698
    .line 699
    move-object/from16 v10, v43

    .line 700
    .line 701
    goto/16 :goto_17

    .line 702
    .line 703
    :cond_24
    move-object/from16 v10, v39

    .line 704
    .line 705
    move/from16 v39, v12

    .line 706
    .line 707
    move-object/from16 v1, p0

    .line 708
    .line 709
    move/from16 v2, p1

    .line 710
    .line 711
    move/from16 v6, v41

    .line 712
    .line 713
    move/from16 v15, v44

    .line 714
    .line 715
    goto :goto_1b

    .line 716
    :cond_25
    move-object/from16 v43, v10

    .line 717
    .line 718
    move-object/from16 v45, v11

    .line 719
    .line 720
    move/from16 v42, v14

    .line 721
    .line 722
    move/from16 v44, v15

    .line 723
    .line 724
    move-object/from16 v10, v39

    .line 725
    .line 726
    move-object v15, v0

    .line 727
    :goto_1c
    const/4 v0, 0x0

    .line 728
    :goto_1d
    if-ge v0, v3, :cond_27

    .line 729
    .line 730
    aget v1, v4, v0

    .line 731
    .line 732
    if-lt v1, v9, :cond_29

    .line 733
    .line 734
    if-gtz v1, :cond_26

    .line 735
    .line 736
    goto :goto_1f

    .line 737
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 738
    .line 739
    goto :goto_1d

    .line 740
    :cond_27
    const/4 v0, 0x0

    .line 741
    :goto_1e
    if-ge v0, v13, :cond_29

    .line 742
    .line 743
    aget-object v1, v38, v0

    .line 744
    .line 745
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-nez v1, :cond_28

    .line 750
    .line 751
    move/from16 v12, v35

    .line 752
    .line 753
    const/4 v2, 0x1

    .line 754
    goto :goto_20

    .line 755
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 756
    .line 757
    goto :goto_1e

    .line 758
    :cond_29
    :goto_1f
    invoke-static {v4}, Landroidx/room/Room;->indexOfMinValue$default([I)I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    invoke-static {v15}, Lkotlin/collections/ArraysKt___ArraysKt;->maxOrThrow([I)I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    const/4 v2, 0x1

    .line 767
    add-int/2addr v1, v2

    .line 768
    move/from16 v12, v35

    .line 769
    .line 770
    if-lt v1, v12, :cond_89

    .line 771
    .line 772
    :goto_20
    const/4 v0, 0x0

    .line 773
    :goto_21
    if-ge v0, v13, :cond_2e

    .line 774
    .line 775
    aget-object v1, v38, v0

    .line 776
    .line 777
    :goto_22
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    if-le v6, v2, :cond_2c

    .line 782
    .line 783
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v6

    .line 787
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 788
    .line 789
    iget-boolean v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 790
    .line 791
    if-nez v6, :cond_2c

    .line 792
    .line 793
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 798
    .line 799
    iget v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    .line 800
    .line 801
    if-eq v8, v2, :cond_2a

    .line 802
    .line 803
    iget v2, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 804
    .line 805
    invoke-virtual {v7, v2}, Lokhttp3/internal/http/StatusLine;->getGaps(I)[I

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    goto :goto_23

    .line 810
    :cond_2a
    move-object/from16 v2, v31

    .line 811
    .line 812
    :goto_23
    aget v8, v45, v0

    .line 813
    .line 814
    iget v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 815
    .line 816
    if-nez v2, :cond_2b

    .line 817
    .line 818
    const/4 v2, 0x0

    .line 819
    goto :goto_24

    .line 820
    :cond_2b
    aget v2, v2, v0

    .line 821
    .line 822
    :goto_24
    add-int/2addr v6, v2

    .line 823
    sub-int/2addr v8, v6

    .line 824
    aput v8, v45, v0

    .line 825
    .line 826
    const/4 v2, 0x1

    .line 827
    goto :goto_22

    .line 828
    :cond_2c
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 833
    .line 834
    if-eqz v1, :cond_2d

    .line 835
    .line 836
    iget v1, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 837
    .line 838
    goto :goto_25

    .line 839
    :cond_2d
    const/4 v1, -0x1

    .line 840
    :goto_25
    aput v1, v43, v0

    .line 841
    .line 842
    add-int/lit8 v0, v0, 0x1

    .line 843
    .line 844
    const/4 v2, 0x1

    .line 845
    goto :goto_21

    .line 846
    :cond_2e
    array-length v0, v15

    .line 847
    const/4 v1, 0x0

    .line 848
    :goto_26
    if-ge v1, v0, :cond_30

    .line 849
    .line 850
    aget v2, v15, v1

    .line 851
    .line 852
    add-int/lit8 v6, v12, -0x1

    .line 853
    .line 854
    if-ne v2, v6, :cond_2f

    .line 855
    .line 856
    move/from16 v2, v40

    .line 857
    .line 858
    neg-int v0, v2

    .line 859
    invoke-static {v4, v0}, Landroidx/room/Room;->offsetBy([II)V

    .line 860
    .line 861
    .line 862
    goto :goto_27

    .line 863
    :cond_2f
    move/from16 v2, v40

    .line 864
    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 866
    .line 867
    goto :goto_26

    .line 868
    :cond_30
    move/from16 v2, v40

    .line 869
    .line 870
    :goto_27
    const/4 v0, 0x0

    .line 871
    :goto_28
    if-ge v0, v3, :cond_32

    .line 872
    .line 873
    aget v1, v4, v0

    .line 874
    .line 875
    move/from16 v6, v42

    .line 876
    .line 877
    if-ge v1, v6, :cond_31

    .line 878
    .line 879
    add-int/lit8 v0, v0, 0x1

    .line 880
    .line 881
    move/from16 v42, v6

    .line 882
    .line 883
    goto :goto_28

    .line 884
    :cond_31
    move-object/from16 v14, p0

    .line 885
    .line 886
    move/from16 v0, p1

    .line 887
    .line 888
    move/from16 v42, v3

    .line 889
    .line 890
    move/from16 v46, v9

    .line 891
    .line 892
    move-object/from16 v3, v43

    .line 893
    .line 894
    move/from16 v11, v44

    .line 895
    .line 896
    move-object/from16 v8, v45

    .line 897
    .line 898
    move-object/from16 p1, v10

    .line 899
    .line 900
    move/from16 v45, v12

    .line 901
    .line 902
    move/from16 v44, v13

    .line 903
    .line 904
    move-object/from16 v43, v15

    .line 905
    .line 906
    move v15, v0

    .line 907
    goto/16 :goto_35

    .line 908
    .line 909
    :cond_32
    move/from16 v6, v42

    .line 910
    .line 911
    invoke-static {v4}, Landroidx/room/Room;->indexOfMaxValue([I)I

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    aget v0, v4, v0

    .line 916
    .line 917
    sub-int v14, v6, v0

    .line 918
    .line 919
    neg-int v0, v14

    .line 920
    move-object/from16 v8, v45

    .line 921
    .line 922
    invoke-static {v8, v0}, Landroidx/room/Room;->offsetBy([II)V

    .line 923
    .line 924
    .line 925
    invoke-static {v4, v14}, Landroidx/room/Room;->offsetBy([II)V

    .line 926
    .line 927
    .line 928
    const/4 v0, 0x0

    .line 929
    :goto_29
    array-length v1, v8

    .line 930
    const/4 v11, 0x0

    .line 931
    :goto_2a
    if-ge v11, v1, :cond_41

    .line 932
    .line 933
    move/from16 v35, v0

    .line 934
    .line 935
    aget v0, v8, v11

    .line 936
    .line 937
    move/from16 v39, v11

    .line 938
    .line 939
    move/from16 v11, v44

    .line 940
    .line 941
    if-ge v0, v11, :cond_40

    .line 942
    .line 943
    invoke-static {v8}, Landroidx/room/Room;->indexOfMinValue$default([I)I

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    invoke-static/range {v43 .. v43}, Landroidx/room/Room;->indexOfMaxValue([I)I

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    move/from16 v39, v0

    .line 952
    .line 953
    if-eq v0, v1, :cond_34

    .line 954
    .line 955
    aget v0, v8, v39

    .line 956
    .line 957
    move/from16 v40, v1

    .line 958
    .line 959
    aget v1, v8, v40

    .line 960
    .line 961
    if-ne v0, v1, :cond_33

    .line 962
    .line 963
    move/from16 v0, v40

    .line 964
    .line 965
    goto :goto_2b

    .line 966
    :cond_33
    move/from16 v0, v39

    .line 967
    .line 968
    const/16 v35, 0x1

    .line 969
    .line 970
    :cond_34
    :goto_2b
    aget v1, v43, v0

    .line 971
    .line 972
    move/from16 v40, v14

    .line 973
    .line 974
    const/4 v14, -0x1

    .line 975
    if-ne v1, v14, :cond_35

    .line 976
    .line 977
    move v1, v12

    .line 978
    :cond_35
    invoke-virtual {v7, v1, v0}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    if-gez v1, :cond_3a

    .line 983
    .line 984
    move-object/from16 v14, p0

    .line 985
    .line 986
    move-object/from16 v1, v43

    .line 987
    .line 988
    if-nez v35, :cond_37

    .line 989
    .line 990
    invoke-static {v1, v14, v8, v0}, Landroidx/room/Room;->measure$lambda$0$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    .line 991
    .line 992
    .line 993
    move-result v39

    .line 994
    if-eqz v39, :cond_36

    .line 995
    .line 996
    goto :goto_2c

    .line 997
    :cond_36
    move/from16 v0, p1

    .line 998
    .line 999
    goto :goto_2f

    .line 1000
    :cond_37
    :goto_2c
    if-eqz p4, :cond_36

    .line 1001
    .line 1002
    invoke-virtual {v7}, Lokhttp3/internal/http/StatusLine;->reset()V

    .line 1003
    .line 1004
    .line 1005
    array-length v1, v1

    .line 1006
    new-array v2, v1, [I

    .line 1007
    .line 1008
    const/4 v3, 0x0

    .line 1009
    :goto_2d
    if-ge v3, v1, :cond_38

    .line 1010
    .line 1011
    const/4 v4, -0x1

    .line 1012
    aput v4, v2, v3

    .line 1013
    .line 1014
    add-int/lit8 v3, v3, 0x1

    .line 1015
    .line 1016
    goto :goto_2d

    .line 1017
    :cond_38
    array-length v1, v8

    .line 1018
    new-array v3, v1, [I

    .line 1019
    .line 1020
    const/4 v4, 0x0

    .line 1021
    :goto_2e
    if-ge v4, v1, :cond_39

    .line 1022
    .line 1023
    aget v5, v8, v0

    .line 1024
    .line 1025
    aput v5, v3, v4

    .line 1026
    .line 1027
    add-int/lit8 v4, v4, 0x1

    .line 1028
    .line 1029
    goto :goto_2e

    .line 1030
    :cond_39
    move/from16 v4, p1

    .line 1031
    .line 1032
    const/4 v6, 0x0

    .line 1033
    invoke-static {v14, v4, v2, v3, v6}, Landroidx/room/Room;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    return-object v0

    .line 1038
    :goto_2f
    move/from16 v42, v3

    .line 1039
    .line 1040
    move-object/from16 v43, v15

    .line 1041
    .line 1042
    move v15, v0

    .line 1043
    move-object v3, v1

    .line 1044
    move/from16 v46, v9

    .line 1045
    .line 1046
    move-object/from16 p1, v10

    .line 1047
    .line 1048
    move/from16 v45, v12

    .line 1049
    .line 1050
    move/from16 v44, v13

    .line 1051
    .line 1052
    move/from16 v0, v35

    .line 1053
    .line 1054
    goto/16 :goto_34

    .line 1055
    .line 1056
    :cond_3a
    move-object/from16 v14, p0

    .line 1057
    .line 1058
    move/from16 v42, v3

    .line 1059
    .line 1060
    move/from16 v45, v12

    .line 1061
    .line 1062
    move/from16 v44, v13

    .line 1063
    .line 1064
    move-object/from16 v3, v43

    .line 1065
    .line 1066
    move-object/from16 v43, v15

    .line 1067
    .line 1068
    move/from16 v15, p1

    .line 1069
    .line 1070
    invoke-virtual {v14, v10, v1, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 1071
    .line 1072
    .line 1073
    move-result-wide v12

    .line 1074
    move/from16 v46, v9

    .line 1075
    .line 1076
    move-object/from16 p1, v10

    .line 1077
    .line 1078
    and-long v9, v12, v28

    .line 1079
    .line 1080
    long-to-int v0, v9

    .line 1081
    shr-long v9, v12, v27

    .line 1082
    .line 1083
    long-to-int v9, v9

    .line 1084
    sub-int v10, v0, v9

    .line 1085
    .line 1086
    move/from16 v39, v9

    .line 1087
    .line 1088
    const/4 v9, 0x1

    .line 1089
    if-eq v10, v9, :cond_3b

    .line 1090
    .line 1091
    const/4 v9, -0x2

    .line 1092
    goto :goto_30

    .line 1093
    :cond_3b
    move/from16 v9, v39

    .line 1094
    .line 1095
    :goto_30
    invoke-virtual {v7, v1, v9}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v5, v12, v13, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v9

    .line 1102
    invoke-static {v12, v13, v8}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 1103
    .line 1104
    .line 1105
    move-result v12

    .line 1106
    const/4 v13, 0x1

    .line 1107
    if-eq v10, v13, :cond_3c

    .line 1108
    .line 1109
    invoke-virtual {v7, v1}, Lokhttp3/internal/http/StatusLine;->getGaps(I)[I

    .line 1110
    .line 1111
    .line 1112
    move-result-object v10

    .line 1113
    goto :goto_31

    .line 1114
    :cond_3c
    move-object/from16 v10, v31

    .line 1115
    .line 1116
    :goto_31
    move/from16 v13, v39

    .line 1117
    .line 1118
    :goto_32
    if-ge v13, v0, :cond_3f

    .line 1119
    .line 1120
    move/from16 v39, v0

    .line 1121
    .line 1122
    aget v0, v8, v13

    .line 1123
    .line 1124
    if-eq v0, v12, :cond_3d

    .line 1125
    .line 1126
    const/16 v35, 0x1

    .line 1127
    .line 1128
    :cond_3d
    aget-object v0, v38, v13

    .line 1129
    .line 1130
    invoke-virtual {v0, v9}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    aput v1, v3, v13

    .line 1134
    .line 1135
    if-nez v10, :cond_3e

    .line 1136
    .line 1137
    const/16 v47, 0x0

    .line 1138
    .line 1139
    goto :goto_33

    .line 1140
    :cond_3e
    aget v0, v10, v13

    .line 1141
    .line 1142
    move/from16 v47, v0

    .line 1143
    .line 1144
    :goto_33
    iget v0, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1145
    .line 1146
    add-int/2addr v0, v12

    .line 1147
    add-int v0, v0, v47

    .line 1148
    .line 1149
    aput v0, v8, v13

    .line 1150
    .line 1151
    add-int/lit8 v13, v13, 0x1

    .line 1152
    .line 1153
    move/from16 v0, v39

    .line 1154
    .line 1155
    goto :goto_32

    .line 1156
    :cond_3f
    move-object/from16 v10, p1

    .line 1157
    .line 1158
    move/from16 p1, v15

    .line 1159
    .line 1160
    move/from16 v0, v35

    .line 1161
    .line 1162
    move/from16 v14, v40

    .line 1163
    .line 1164
    move-object/from16 v15, v43

    .line 1165
    .line 1166
    move/from16 v13, v44

    .line 1167
    .line 1168
    move/from16 v12, v45

    .line 1169
    .line 1170
    move/from16 v9, v46

    .line 1171
    .line 1172
    move-object/from16 v43, v3

    .line 1173
    .line 1174
    move/from16 v44, v11

    .line 1175
    .line 1176
    move/from16 v3, v42

    .line 1177
    .line 1178
    goto/16 :goto_29

    .line 1179
    .line 1180
    :cond_40
    move/from16 v42, v3

    .line 1181
    .line 1182
    move/from16 v46, v9

    .line 1183
    .line 1184
    move/from16 v45, v12

    .line 1185
    .line 1186
    move/from16 v44, v13

    .line 1187
    .line 1188
    move/from16 v40, v14

    .line 1189
    .line 1190
    move-object/from16 v3, v43

    .line 1191
    .line 1192
    move-object/from16 v14, p0

    .line 1193
    .line 1194
    move-object/from16 v43, v15

    .line 1195
    .line 1196
    move/from16 v15, p1

    .line 1197
    .line 1198
    move-object/from16 p1, v10

    .line 1199
    .line 1200
    add-int/lit8 v0, v39, 0x1

    .line 1201
    .line 1202
    move/from16 p1, v15

    .line 1203
    .line 1204
    move/from16 v14, v40

    .line 1205
    .line 1206
    move-object/from16 v15, v43

    .line 1207
    .line 1208
    move-object/from16 v43, v3

    .line 1209
    .line 1210
    move/from16 v44, v11

    .line 1211
    .line 1212
    move/from16 v3, v42

    .line 1213
    .line 1214
    move v11, v0

    .line 1215
    move/from16 v0, v35

    .line 1216
    .line 1217
    goto/16 :goto_2a

    .line 1218
    .line 1219
    :cond_41
    move/from16 v35, v0

    .line 1220
    .line 1221
    move/from16 v42, v3

    .line 1222
    .line 1223
    move/from16 v40, v14

    .line 1224
    .line 1225
    move-object/from16 v3, v43

    .line 1226
    .line 1227
    move/from16 v11, v44

    .line 1228
    .line 1229
    move-object/from16 v14, p0

    .line 1230
    .line 1231
    move-object/from16 v43, v15

    .line 1232
    .line 1233
    move/from16 v15, p1

    .line 1234
    .line 1235
    move/from16 v46, v9

    .line 1236
    .line 1237
    move/from16 v45, v12

    .line 1238
    .line 1239
    move/from16 v44, v13

    .line 1240
    .line 1241
    move-object/from16 p1, v10

    .line 1242
    .line 1243
    :goto_34
    if-eqz v0, :cond_42

    .line 1244
    .line 1245
    if-eqz p4, :cond_42

    .line 1246
    .line 1247
    invoke-virtual {v7}, Lokhttp3/internal/http/StatusLine;->reset()V

    .line 1248
    .line 1249
    .line 1250
    const/4 v6, 0x0

    .line 1251
    invoke-static {v14, v15, v3, v8, v6}, Landroidx/room/Room;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    return-object v0

    .line 1256
    :cond_42
    add-int v0, v15, v40

    .line 1257
    .line 1258
    invoke-static {v8}, Landroidx/room/Room;->indexOfMinValue$default([I)I

    .line 1259
    .line 1260
    .line 1261
    move-result v1

    .line 1262
    aget v1, v8, v1

    .line 1263
    .line 1264
    if-gez v1, :cond_43

    .line 1265
    .line 1266
    add-int/2addr v0, v1

    .line 1267
    invoke-static {v4, v1}, Landroidx/room/Room;->offsetBy([II)V

    .line 1268
    .line 1269
    .line 1270
    neg-int v1, v1

    .line 1271
    invoke-static {v8, v1}, Landroidx/room/Room;->offsetBy([II)V

    .line 1272
    .line 1273
    .line 1274
    :cond_43
    :goto_35
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v1

    .line 1278
    move-object/from16 v9, v34

    .line 1279
    .line 1280
    if-nez v1, :cond_45

    .line 1281
    .line 1282
    iget-boolean v1, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 1283
    .line 1284
    if-nez v1, :cond_44

    .line 1285
    .line 1286
    goto :goto_36

    .line 1287
    :cond_44
    iget-object v1, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 1288
    .line 1289
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1290
    .line 1291
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 1292
    .line 1293
    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1294
    .line 1295
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v1

    .line 1299
    check-cast v1, Ljava/lang/Number;

    .line 1300
    .line 1301
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 1302
    .line 1303
    .line 1304
    move-result v1

    .line 1305
    goto :goto_37

    .line 1306
    :cond_45
    :goto_36
    iget v1, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 1307
    .line 1308
    :goto_37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1309
    .line 1310
    .line 1311
    move-result v10

    .line 1312
    invoke-static {v10}, Ljava/lang/Integer;->signum(I)I

    .line 1313
    .line 1314
    .line 1315
    move-result v10

    .line 1316
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    .line 1317
    .line 1318
    .line 1319
    move-result v12

    .line 1320
    if-ne v10, v12, :cond_46

    .line 1321
    .line 1322
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1323
    .line 1324
    .line 1325
    move-result v10

    .line 1326
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 1327
    .line 1328
    .line 1329
    move-result v10

    .line 1330
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 1331
    .line 1332
    .line 1333
    move-result v12

    .line 1334
    if-lt v10, v12, :cond_46

    .line 1335
    .line 1336
    int-to-float v10, v0

    .line 1337
    goto :goto_38

    .line 1338
    :cond_46
    move v10, v1

    .line 1339
    :goto_38
    sub-float/2addr v1, v10

    .line 1340
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 1341
    .line 1342
    .line 1343
    move-result v12

    .line 1344
    const/4 v13, 0x0

    .line 1345
    if-eqz v12, :cond_47

    .line 1346
    .line 1347
    if-le v0, v15, :cond_47

    .line 1348
    .line 1349
    cmpg-float v12, v1, v13

    .line 1350
    .line 1351
    if-gtz v12, :cond_47

    .line 1352
    .line 1353
    sub-int/2addr v0, v15

    .line 1354
    int-to-float v0, v0

    .line 1355
    add-float v13, v0, v1

    .line 1356
    .line 1357
    :cond_47
    array-length v0, v8

    .line 1358
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    array-length v1, v0

    .line 1363
    const/4 v12, 0x0

    .line 1364
    :goto_39
    if-ge v12, v1, :cond_48

    .line 1365
    .line 1366
    aget v15, v0, v12

    .line 1367
    .line 1368
    neg-int v15, v15

    .line 1369
    aput v15, v0, v12

    .line 1370
    .line 1371
    add-int/lit8 v12, v12, 0x1

    .line 1372
    .line 1373
    goto :goto_39

    .line 1374
    :cond_48
    move/from16 v12, v44

    .line 1375
    .line 1376
    if-le v11, v2, :cond_4c

    .line 1377
    .line 1378
    const/4 v1, 0x0

    .line 1379
    :goto_3a
    if-ge v1, v12, :cond_4c

    .line 1380
    .line 1381
    aget-object v2, v38, v1

    .line 1382
    .line 1383
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1384
    .line 1385
    .line 1386
    move-result v15

    .line 1387
    move/from16 v34, v1

    .line 1388
    .line 1389
    const/4 v1, 0x0

    .line 1390
    :goto_3b
    if-ge v1, v15, :cond_4a

    .line 1391
    .line 1392
    invoke-virtual {v2, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v35

    .line 1396
    move-object/from16 v39, v3

    .line 1397
    .line 1398
    move-object/from16 v3, v35

    .line 1399
    .line 1400
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1401
    .line 1402
    move/from16 v44, v11

    .line 1403
    .line 1404
    iget v11, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1405
    .line 1406
    invoke-virtual {v7, v11}, Lokhttp3/internal/http/StatusLine;->getGaps(I)[I

    .line 1407
    .line 1408
    .line 1409
    move-result-object v11

    .line 1410
    iget v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1411
    .line 1412
    if-nez v11, :cond_49

    .line 1413
    .line 1414
    const/4 v11, 0x0

    .line 1415
    goto :goto_3c

    .line 1416
    :cond_49
    aget v11, v11, v34

    .line 1417
    .line 1418
    :goto_3c
    add-int/2addr v3, v11

    .line 1419
    invoke-virtual {v2}, Lkotlin/collections/AbstractMutableList;->size()I

    .line 1420
    .line 1421
    .line 1422
    move-result v11

    .line 1423
    const/16 v36, 0x1

    .line 1424
    .line 1425
    add-int/lit8 v11, v11, -0x1

    .line 1426
    .line 1427
    if-eq v1, v11, :cond_4b

    .line 1428
    .line 1429
    aget v11, v8, v34

    .line 1430
    .line 1431
    if-eqz v11, :cond_4b

    .line 1432
    .line 1433
    if-lt v11, v3, :cond_4b

    .line 1434
    .line 1435
    sub-int/2addr v11, v3

    .line 1436
    aput v11, v8, v34

    .line 1437
    .line 1438
    add-int/lit8 v1, v1, 0x1

    .line 1439
    .line 1440
    invoke-virtual {v2, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v3

    .line 1444
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1445
    .line 1446
    iget v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1447
    .line 1448
    aput v3, v39, v34

    .line 1449
    .line 1450
    move-object/from16 v3, v39

    .line 1451
    .line 1452
    move/from16 v11, v44

    .line 1453
    .line 1454
    goto :goto_3b

    .line 1455
    :cond_4a
    move-object/from16 v39, v3

    .line 1456
    .line 1457
    move/from16 v44, v11

    .line 1458
    .line 1459
    :cond_4b
    add-int/lit8 v1, v34, 0x1

    .line 1460
    .line 1461
    move-object/from16 v3, v39

    .line 1462
    .line 1463
    move/from16 v11, v44

    .line 1464
    .line 1465
    goto :goto_3a

    .line 1466
    :cond_4c
    move-object/from16 v39, v3

    .line 1467
    .line 1468
    move/from16 v44, v11

    .line 1469
    .line 1470
    add-int v15, v44, v19

    .line 1471
    .line 1472
    if-eqz v18, :cond_4d

    .line 1473
    .line 1474
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1475
    .line 1476
    .line 1477
    move-result v1

    .line 1478
    move-wide/from16 v2, v24

    .line 1479
    .line 1480
    :goto_3d
    move/from16 v49, v1

    .line 1481
    .line 1482
    goto :goto_3e

    .line 1483
    :cond_4d
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->maxOrThrow([I)I

    .line 1484
    .line 1485
    .line 1486
    move-result v1

    .line 1487
    add-int/2addr v1, v15

    .line 1488
    move-wide/from16 v2, v24

    .line 1489
    .line 1490
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1491
    .line 1492
    .line 1493
    move-result v1

    .line 1494
    goto :goto_3d

    .line 1495
    :goto_3e
    if-eqz v18, :cond_4e

    .line 1496
    .line 1497
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->maxOrThrow([I)I

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    add-int/2addr v1, v15

    .line 1502
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    :goto_3f
    move/from16 v50, v1

    .line 1507
    .line 1508
    goto :goto_40

    .line 1509
    :cond_4e
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1510
    .line 1511
    .line 1512
    move-result v1

    .line 1513
    goto :goto_3f

    .line 1514
    :goto_40
    if-eqz v18, :cond_4f

    .line 1515
    .line 1516
    move/from16 v1, v50

    .line 1517
    .line 1518
    goto :goto_41

    .line 1519
    :cond_4f
    move/from16 v1, v49

    .line 1520
    .line 1521
    :goto_41
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 1522
    .line 1523
    .line 1524
    move-result v1

    .line 1525
    sub-int v1, v1, v44

    .line 1526
    .line 1527
    add-int v1, v1, v19

    .line 1528
    .line 1529
    const/16 v32, 0x0

    .line 1530
    .line 1531
    aget v11, v0, v32

    .line 1532
    .line 1533
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    .line 1534
    .line 1535
    .line 1536
    move-result v19

    .line 1537
    move/from16 p4, v11

    .line 1538
    .line 1539
    const/4 v11, -0x1

    .line 1540
    add-int/lit8 v19, v19, -0x1

    .line 1541
    .line 1542
    if-ltz v19, :cond_57

    .line 1543
    .line 1544
    move/from16 v11, v19

    .line 1545
    .line 1546
    move-object/from16 v24, v31

    .line 1547
    .line 1548
    move/from16 v19, p4

    .line 1549
    .line 1550
    :goto_42
    add-int/lit8 v25, v11, -0x1

    .line 1551
    .line 1552
    move/from16 p4, v13

    .line 1553
    .line 1554
    move-object/from16 v13, v22

    .line 1555
    .line 1556
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v11

    .line 1560
    check-cast v11, Ljava/lang/Number;

    .line 1561
    .line 1562
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 1563
    .line 1564
    .line 1565
    move-result v11

    .line 1566
    move/from16 v22, v15

    .line 1567
    .line 1568
    invoke-virtual {v7, v11}, Lokhttp3/internal/http/StatusLine;->getLane(I)I

    .line 1569
    .line 1570
    .line 1571
    move-result v15

    .line 1572
    move-object/from16 v34, v4

    .line 1573
    .line 1574
    const/4 v4, -0x2

    .line 1575
    if-eq v15, v4, :cond_52

    .line 1576
    .line 1577
    const/4 v4, -0x1

    .line 1578
    if-eq v15, v4, :cond_52

    .line 1579
    .line 1580
    aget-object v4, v38, v15

    .line 1581
    .line 1582
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v4

    .line 1586
    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1587
    .line 1588
    if-eqz v4, :cond_50

    .line 1589
    .line 1590
    iget v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1591
    .line 1592
    goto :goto_43

    .line 1593
    :cond_50
    const/4 v4, -0x1

    .line 1594
    :goto_43
    if-le v4, v11, :cond_54

    .line 1595
    .line 1596
    :cond_51
    move-object/from16 v4, p1

    .line 1597
    .line 1598
    move-wide/from16 v62, v2

    .line 1599
    .line 1600
    const/4 v15, 0x0

    .line 1601
    goto :goto_46

    .line 1602
    :cond_52
    const/4 v4, 0x0

    .line 1603
    :goto_44
    if-ge v4, v12, :cond_51

    .line 1604
    .line 1605
    aget-object v15, v38, v4

    .line 1606
    .line 1607
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v15

    .line 1611
    check-cast v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1612
    .line 1613
    if-eqz v15, :cond_53

    .line 1614
    .line 1615
    iget v15, v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1616
    .line 1617
    goto :goto_45

    .line 1618
    :cond_53
    const/4 v15, -0x1

    .line 1619
    :goto_45
    if-le v15, v11, :cond_54

    .line 1620
    .line 1621
    add-int/lit8 v4, v4, 0x1

    .line 1622
    .line 1623
    goto :goto_44

    .line 1624
    :cond_54
    move-object/from16 v4, p1

    .line 1625
    .line 1626
    move-wide/from16 v62, v2

    .line 1627
    .line 1628
    goto :goto_47

    .line 1629
    :goto_46
    invoke-virtual {v14, v4, v11, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 1630
    .line 1631
    .line 1632
    move-result-wide v2

    .line 1633
    if-nez v24, :cond_55

    .line 1634
    .line 1635
    new-instance v24, Ljava/util/ArrayList;

    .line 1636
    .line 1637
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .line 1639
    .line 1640
    :cond_55
    move-object/from16 v64, v24

    .line 1641
    .line 1642
    invoke-virtual {v5, v2, v3, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v2

    .line 1646
    iget v3, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1647
    .line 1648
    sub-int v3, v19, v3

    .line 1649
    .line 1650
    invoke-virtual {v2, v3, v15, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 1651
    .line 1652
    .line 1653
    move-object/from16 v11, v64

    .line 1654
    .line 1655
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move/from16 v19, v3

    .line 1659
    .line 1660
    move-object/from16 v24, v11

    .line 1661
    .line 1662
    :goto_47
    if-gez v25, :cond_56

    .line 1663
    .line 1664
    goto :goto_48

    .line 1665
    :cond_56
    move-object/from16 p1, v4

    .line 1666
    .line 1667
    move/from16 v15, v22

    .line 1668
    .line 1669
    move/from16 v11, v25

    .line 1670
    .line 1671
    move-object/from16 v4, v34

    .line 1672
    .line 1673
    move-wide/from16 v2, v62

    .line 1674
    .line 1675
    move-object/from16 v22, v13

    .line 1676
    .line 1677
    move/from16 v13, p4

    .line 1678
    .line 1679
    goto/16 :goto_42

    .line 1680
    .line 1681
    :cond_57
    move-wide/from16 v62, v2

    .line 1682
    .line 1683
    move-object/from16 v34, v4

    .line 1684
    .line 1685
    move/from16 p4, v13

    .line 1686
    .line 1687
    move-object/from16 v13, v22

    .line 1688
    .line 1689
    move-object/from16 v4, p1

    .line 1690
    .line 1691
    move/from16 v22, v15

    .line 1692
    .line 1693
    move-object/from16 v24, v31

    .line 1694
    .line 1695
    :goto_48
    if-nez v24, :cond_58

    .line 1696
    .line 1697
    move-object/from16 v2, v26

    .line 1698
    .line 1699
    goto :goto_49

    .line 1700
    :cond_58
    move-object/from16 v2, v24

    .line 1701
    .line 1702
    :goto_49
    const/4 v3, 0x0

    .line 1703
    const/4 v11, 0x0

    .line 1704
    :goto_4a
    if-ge v3, v12, :cond_59

    .line 1705
    .line 1706
    aget-object v15, v38, v3

    .line 1707
    .line 1708
    iget v15, v15, Lkotlin/collections/ArrayDeque;->size:I

    .line 1709
    .line 1710
    add-int/2addr v11, v15

    .line 1711
    add-int/lit8 v3, v3, 0x1

    .line 1712
    .line 1713
    goto :goto_4a

    .line 1714
    :cond_59
    new-instance v15, Ljava/util/ArrayList;

    .line 1715
    .line 1716
    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1717
    .line 1718
    .line 1719
    :goto_4b
    const/4 v3, 0x0

    .line 1720
    :goto_4c
    if-ge v3, v12, :cond_62

    .line 1721
    .line 1722
    aget-object v11, v38, v3

    .line 1723
    .line 1724
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v11

    .line 1728
    if-nez v11, :cond_61

    .line 1729
    .line 1730
    move/from16 v24, v6

    .line 1731
    .line 1732
    move/from16 v6, v41

    .line 1733
    .line 1734
    const/4 v3, -0x1

    .line 1735
    const/4 v11, 0x0

    .line 1736
    :goto_4d
    if-ge v11, v12, :cond_5c

    .line 1737
    .line 1738
    aget-object v19, v38, v11

    .line 1739
    .line 1740
    invoke-virtual/range {v19 .. v19}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v19

    .line 1744
    move/from16 v25, v11

    .line 1745
    .line 1746
    move-object/from16 v11, v19

    .line 1747
    .line 1748
    check-cast v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1749
    .line 1750
    if-eqz v11, :cond_5a

    .line 1751
    .line 1752
    iget v11, v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1753
    .line 1754
    goto :goto_4e

    .line 1755
    :cond_5a
    move/from16 v11, v41

    .line 1756
    .line 1757
    :goto_4e
    if-le v6, v11, :cond_5b

    .line 1758
    .line 1759
    move v6, v11

    .line 1760
    move/from16 v3, v25

    .line 1761
    .line 1762
    :cond_5b
    add-int/lit8 v11, v25, 0x1

    .line 1763
    .line 1764
    goto :goto_4d

    .line 1765
    :cond_5c
    aget-object v6, v38, v3

    .line 1766
    .line 1767
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v6

    .line 1771
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1772
    .line 1773
    iget v11, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    .line 1774
    .line 1775
    if-eq v11, v3, :cond_5d

    .line 1776
    .line 1777
    move/from16 v6, v24

    .line 1778
    .line 1779
    goto :goto_4b

    .line 1780
    :cond_5d
    move/from16 p1, v3

    .line 1781
    .line 1782
    iget v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    .line 1783
    .line 1784
    add-int/2addr v3, v11

    .line 1785
    move/from16 v25, v12

    .line 1786
    .line 1787
    int-to-long v11, v11

    .line 1788
    shl-long v11, v11, v27

    .line 1789
    .line 1790
    move-wide/from16 v47, v11

    .line 1791
    .line 1792
    int-to-long v11, v3

    .line 1793
    and-long v11, v11, v28

    .line 1794
    .line 1795
    or-long v11, v47, v11

    .line 1796
    .line 1797
    invoke-static {v11, v12, v0}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 1798
    .line 1799
    .line 1800
    move-result v3

    .line 1801
    move-wide/from16 v47, v11

    .line 1802
    .line 1803
    move-object/from16 v11, v21

    .line 1804
    .line 1805
    iget-object v12, v11, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    .line 1806
    .line 1807
    aget v12, v12, p1

    .line 1808
    .line 1809
    move-object/from16 p1, v0

    .line 1810
    .line 1811
    iget v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 1812
    .line 1813
    add-int/2addr v0, v3

    .line 1814
    move-object/from16 v21, v8

    .line 1815
    .line 1816
    move/from16 v8, p3

    .line 1817
    .line 1818
    if-lt v0, v8, :cond_5f

    .line 1819
    .line 1820
    move/from16 v0, v46

    .line 1821
    .line 1822
    if-gt v3, v0, :cond_5e

    .line 1823
    .line 1824
    invoke-virtual {v6, v3, v12, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    .line 1829
    .line 1830
    :cond_5e
    :goto_4f
    move/from16 p3, v8

    .line 1831
    .line 1832
    move-object v12, v9

    .line 1833
    goto :goto_50

    .line 1834
    :cond_5f
    move/from16 v0, v46

    .line 1835
    .line 1836
    goto :goto_4f

    .line 1837
    :goto_50
    shr-long v8, v47, v27

    .line 1838
    .line 1839
    long-to-int v8, v8

    .line 1840
    move/from16 v19, v8

    .line 1841
    .line 1842
    and-long v8, v47, v28

    .line 1843
    .line 1844
    long-to-int v8, v8

    .line 1845
    move/from16 v9, v19

    .line 1846
    .line 1847
    :goto_51
    if-ge v9, v8, :cond_60

    .line 1848
    .line 1849
    move/from16 v46, v0

    .line 1850
    .line 1851
    iget v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1852
    .line 1853
    add-int/2addr v0, v3

    .line 1854
    aput v0, p1, v9

    .line 1855
    .line 1856
    add-int/lit8 v9, v9, 0x1

    .line 1857
    .line 1858
    move/from16 v0, v46

    .line 1859
    .line 1860
    goto :goto_51

    .line 1861
    :cond_60
    move/from16 v46, v0

    .line 1862
    .line 1863
    move-object v9, v12

    .line 1864
    move-object/from16 v8, v21

    .line 1865
    .line 1866
    move/from16 v6, v24

    .line 1867
    .line 1868
    move/from16 v12, v25

    .line 1869
    .line 1870
    move-object/from16 v0, p1

    .line 1871
    .line 1872
    move-object/from16 v21, v11

    .line 1873
    .line 1874
    goto/16 :goto_4b

    .line 1875
    .line 1876
    :cond_61
    move-object/from16 p1, v0

    .line 1877
    .line 1878
    move/from16 v24, v6

    .line 1879
    .line 1880
    move/from16 v25, v12

    .line 1881
    .line 1882
    move-object/from16 v11, v21

    .line 1883
    .line 1884
    move-object/from16 v21, v8

    .line 1885
    .line 1886
    move-object v12, v9

    .line 1887
    add-int/lit8 v3, v3, 0x1

    .line 1888
    .line 1889
    move/from16 v12, v25

    .line 1890
    .line 1891
    move-object/from16 v21, v11

    .line 1892
    .line 1893
    goto/16 :goto_4c

    .line 1894
    .line 1895
    :cond_62
    move-object/from16 p1, v0

    .line 1896
    .line 1897
    move/from16 v24, v6

    .line 1898
    .line 1899
    move-object v12, v9

    .line 1900
    move-object/from16 v11, v21

    .line 1901
    .line 1902
    const/16 v32, 0x0

    .line 1903
    .line 1904
    move-object/from16 v21, v8

    .line 1905
    .line 1906
    aget v0, p1, v32

    .line 1907
    .line 1908
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v3

    .line 1912
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1913
    .line 1914
    if-eqz v3, :cond_63

    .line 1915
    .line 1916
    iget v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1917
    .line 1918
    goto :goto_52

    .line 1919
    :cond_63
    const/4 v3, -0x1

    .line 1920
    :goto_52
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v6

    .line 1924
    if-eqz v6, :cond_6f

    .line 1925
    .line 1926
    if-eqz v20, :cond_6f

    .line 1927
    .line 1928
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    .line 1929
    .line 1930
    .line 1931
    move-result v6

    .line 1932
    if-nez v6, :cond_6f

    .line 1933
    .line 1934
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    .line 1935
    .line 1936
    .line 1937
    move-result v6

    .line 1938
    const/16 v36, 0x1

    .line 1939
    .line 1940
    add-int/lit8 v6, v6, -0x1

    .line 1941
    .line 1942
    :goto_53
    const/4 v8, -0x1

    .line 1943
    move-object/from16 v9, v20

    .line 1944
    .line 1945
    if-ge v8, v6, :cond_66

    .line 1946
    .line 1947
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v8

    .line 1951
    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1952
    .line 1953
    iget v8, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1954
    .line 1955
    if-le v8, v3, :cond_65

    .line 1956
    .line 1957
    if-eqz v6, :cond_64

    .line 1958
    .line 1959
    add-int/lit8 v8, v6, -0x1

    .line 1960
    .line 1961
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v8

    .line 1965
    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1966
    .line 1967
    iget v8, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1968
    .line 1969
    if-gt v8, v3, :cond_65

    .line 1970
    .line 1971
    :cond_64
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v3

    .line 1975
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1976
    .line 1977
    goto :goto_54

    .line 1978
    :cond_65
    add-int/lit8 v6, v6, -0x1

    .line 1979
    .line 1980
    move-object/from16 v20, v9

    .line 1981
    .line 1982
    goto :goto_53

    .line 1983
    :cond_66
    move-object/from16 v3, v31

    .line 1984
    .line 1985
    :goto_54
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v6

    .line 1989
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 1990
    .line 1991
    if-eqz v3, :cond_6f

    .line 1992
    .line 1993
    iget v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1994
    .line 1995
    iget v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1996
    .line 1997
    add-int/lit8 v8, v45, -0x1

    .line 1998
    .line 1999
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 2000
    .line 2001
    .line 2002
    move-result v6

    .line 2003
    if-gt v3, v6, :cond_6f

    .line 2004
    .line 2005
    move-object/from16 v8, v31

    .line 2006
    .line 2007
    :goto_55
    if-eqz v8, :cond_69

    .line 2008
    .line 2009
    move-object/from16 p1, v12

    .line 2010
    .line 2011
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 2012
    .line 2013
    .line 2014
    move-result v12

    .line 2015
    move/from16 v20, v10

    .line 2016
    .line 2017
    const/4 v10, 0x0

    .line 2018
    :goto_56
    if-ge v10, v12, :cond_68

    .line 2019
    .line 2020
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v19

    .line 2024
    move-object/from16 v25, v8

    .line 2025
    .line 2026
    move-object/from16 v8, v19

    .line 2027
    .line 2028
    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2029
    .line 2030
    iget v8, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 2031
    .line 2032
    if-ne v8, v3, :cond_67

    .line 2033
    .line 2034
    move-object/from16 v35, v9

    .line 2035
    .line 2036
    move-object v10, v13

    .line 2037
    move-object/from16 v8, v25

    .line 2038
    .line 2039
    goto/16 :goto_5f

    .line 2040
    .line 2041
    :cond_67
    add-int/lit8 v10, v10, 0x1

    .line 2042
    .line 2043
    move-object/from16 v8, v25

    .line 2044
    .line 2045
    goto :goto_56

    .line 2046
    :cond_68
    :goto_57
    move-object/from16 v25, v8

    .line 2047
    .line 2048
    goto :goto_58

    .line 2049
    :cond_69
    move/from16 v20, v10

    .line 2050
    .line 2051
    move-object/from16 p1, v12

    .line 2052
    .line 2053
    goto :goto_57

    .line 2054
    :goto_58
    if-nez v25, :cond_6a

    .line 2055
    .line 2056
    new-instance v8, Ljava/util/ArrayList;

    .line 2057
    .line 2058
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .line 2060
    .line 2061
    goto :goto_59

    .line 2062
    :cond_6a
    move-object/from16 v8, v25

    .line 2063
    .line 2064
    :goto_59
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 2065
    .line 2066
    .line 2067
    move-result v10

    .line 2068
    const/4 v12, 0x0

    .line 2069
    :goto_5a
    if-ge v12, v10, :cond_6c

    .line 2070
    .line 2071
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v19

    .line 2075
    move-object/from16 v35, v9

    .line 2076
    .line 2077
    move-object/from16 v9, v19

    .line 2078
    .line 2079
    check-cast v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2080
    .line 2081
    iget v9, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 2082
    .line 2083
    if-ne v9, v3, :cond_6b

    .line 2084
    .line 2085
    goto :goto_5b

    .line 2086
    :cond_6b
    add-int/lit8 v12, v12, 0x1

    .line 2087
    .line 2088
    move-object/from16 v9, v35

    .line 2089
    .line 2090
    goto :goto_5a

    .line 2091
    :cond_6c
    move-object/from16 v35, v9

    .line 2092
    .line 2093
    move-object/from16 v19, v31

    .line 2094
    .line 2095
    :goto_5b
    move-object/from16 v9, v19

    .line 2096
    .line 2097
    check-cast v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2098
    .line 2099
    if-eqz v9, :cond_6d

    .line 2100
    .line 2101
    iget v9, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    .line 2102
    .line 2103
    :goto_5c
    move-object v10, v13

    .line 2104
    goto :goto_5d

    .line 2105
    :cond_6d
    const/4 v9, 0x0

    .line 2106
    goto :goto_5c

    .line 2107
    :goto_5d
    invoke-virtual {v14, v4, v3, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 2108
    .line 2109
    .line 2110
    move-result-wide v12

    .line 2111
    invoke-virtual {v5, v12, v13, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v12

    .line 2115
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    .line 2117
    .line 2118
    iget-object v13, v11, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    .line 2119
    .line 2120
    move-object/from16 v19, v8

    .line 2121
    .line 2122
    array-length v8, v13

    .line 2123
    if-le v8, v9, :cond_6e

    .line 2124
    .line 2125
    aget v8, v13, v9

    .line 2126
    .line 2127
    goto :goto_5e

    .line 2128
    :cond_6e
    const/4 v8, 0x0

    .line 2129
    :goto_5e
    invoke-virtual {v12, v0, v8, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 2130
    .line 2131
    .line 2132
    iget v8, v12, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 2133
    .line 2134
    add-int/2addr v8, v0

    .line 2135
    move v0, v8

    .line 2136
    move-object/from16 v8, v19

    .line 2137
    .line 2138
    :goto_5f
    if-eq v3, v6, :cond_70

    .line 2139
    .line 2140
    add-int/lit8 v3, v3, 0x1

    .line 2141
    .line 2142
    move-object/from16 v12, p1

    .line 2143
    .line 2144
    move-object v13, v10

    .line 2145
    move/from16 v10, v20

    .line 2146
    .line 2147
    move-object/from16 v9, v35

    .line 2148
    .line 2149
    goto/16 :goto_55

    .line 2150
    .line 2151
    :cond_6f
    move/from16 v20, v10

    .line 2152
    .line 2153
    move-object/from16 p1, v12

    .line 2154
    .line 2155
    move-object v10, v13

    .line 2156
    move-object/from16 v8, v31

    .line 2157
    .line 2158
    :cond_70
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 2159
    .line 2160
    .line 2161
    move-result v3

    .line 2162
    move-object/from16 v9, v31

    .line 2163
    .line 2164
    const/4 v6, 0x0

    .line 2165
    :goto_60
    if-ge v6, v3, :cond_7a

    .line 2166
    .line 2167
    move-object v13, v10

    .line 2168
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v10

    .line 2172
    check-cast v10, Ljava/lang/Number;

    .line 2173
    .line 2174
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 2175
    .line 2176
    .line 2177
    move-result v10

    .line 2178
    move/from16 v12, v45

    .line 2179
    .line 2180
    if-lt v10, v12, :cond_72

    .line 2181
    .line 2182
    move/from16 v19, v3

    .line 2183
    .line 2184
    :cond_71
    :goto_61
    move/from16 v25, v6

    .line 2185
    .line 2186
    move-object/from16 v3, v43

    .line 2187
    .line 2188
    goto :goto_64

    .line 2189
    :cond_72
    if-eqz v8, :cond_74

    .line 2190
    .line 2191
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 2192
    .line 2193
    .line 2194
    move-result v11

    .line 2195
    move/from16 v19, v3

    .line 2196
    .line 2197
    const/4 v3, 0x0

    .line 2198
    :goto_62
    if-ge v3, v11, :cond_75

    .line 2199
    .line 2200
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v25

    .line 2204
    move/from16 v35, v3

    .line 2205
    .line 2206
    move-object/from16 v3, v25

    .line 2207
    .line 2208
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2209
    .line 2210
    iget v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 2211
    .line 2212
    if-ne v3, v10, :cond_73

    .line 2213
    .line 2214
    goto :goto_61

    .line 2215
    :cond_73
    add-int/lit8 v3, v35, 0x1

    .line 2216
    .line 2217
    goto :goto_62

    .line 2218
    :cond_74
    move/from16 v19, v3

    .line 2219
    .line 2220
    :cond_75
    invoke-virtual {v7, v10}, Lokhttp3/internal/http/StatusLine;->getLane(I)I

    .line 2221
    .line 2222
    .line 2223
    move-result v3

    .line 2224
    const/4 v11, -0x2

    .line 2225
    if-eq v3, v11, :cond_77

    .line 2226
    .line 2227
    const/4 v11, -0x1

    .line 2228
    if-eq v3, v11, :cond_77

    .line 2229
    .line 2230
    aget v3, v43, v3

    .line 2231
    .line 2232
    if-ge v3, v10, :cond_71

    .line 2233
    .line 2234
    move/from16 v25, v6

    .line 2235
    .line 2236
    move-object/from16 v3, v43

    .line 2237
    .line 2238
    :cond_76
    move/from16 v35, v12

    .line 2239
    .line 2240
    const/4 v6, 0x0

    .line 2241
    goto :goto_65

    .line 2242
    :cond_77
    move-object/from16 v3, v43

    .line 2243
    .line 2244
    array-length v11, v3

    .line 2245
    move/from16 v25, v6

    .line 2246
    .line 2247
    const/4 v6, 0x0

    .line 2248
    :goto_63
    if-ge v6, v11, :cond_76

    .line 2249
    .line 2250
    move/from16 v35, v6

    .line 2251
    .line 2252
    aget v6, v3, v35

    .line 2253
    .line 2254
    if-ge v6, v10, :cond_78

    .line 2255
    .line 2256
    add-int/lit8 v6, v35, 0x1

    .line 2257
    .line 2258
    goto :goto_63

    .line 2259
    :cond_78
    :goto_64
    move/from16 v35, v12

    .line 2260
    .line 2261
    goto :goto_66

    .line 2262
    :goto_65
    invoke-virtual {v14, v4, v10, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 2263
    .line 2264
    .line 2265
    move-result-wide v11

    .line 2266
    if-nez v9, :cond_79

    .line 2267
    .line 2268
    new-instance v9, Ljava/util/ArrayList;

    .line 2269
    .line 2270
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    .line 2272
    .line 2273
    :cond_79
    invoke-virtual {v5, v11, v12, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v10

    .line 2277
    invoke-virtual {v10, v0, v6, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 2278
    .line 2279
    .line 2280
    iget v6, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 2281
    .line 2282
    add-int/2addr v6, v0

    .line 2283
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    .line 2285
    .line 2286
    move v0, v6

    .line 2287
    :goto_66
    add-int/lit8 v6, v25, 0x1

    .line 2288
    .line 2289
    move-object/from16 v43, v3

    .line 2290
    .line 2291
    move-object v10, v13

    .line 2292
    move/from16 v3, v19

    .line 2293
    .line 2294
    move/from16 v45, v35

    .line 2295
    .line 2296
    goto/16 :goto_60

    .line 2297
    .line 2298
    :cond_7a
    move-object/from16 v3, v43

    .line 2299
    .line 2300
    move/from16 v35, v45

    .line 2301
    .line 2302
    if-nez v9, :cond_7b

    .line 2303
    .line 2304
    move-object/from16 v9, v26

    .line 2305
    .line 2306
    :cond_7b
    new-instance v0, Ljava/util/ArrayList;

    .line 2307
    .line 2308
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2309
    .line 2310
    .line 2311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2315
    .line 2316
    .line 2317
    if-eqz v8, :cond_7c

    .line 2318
    .line 2319
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2320
    .line 2321
    .line 2322
    :cond_7c
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2323
    .line 2324
    .line 2325
    move-object/from16 v12, p1

    .line 2326
    .line 2327
    iget-object v1, v12, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2328
    .line 2329
    move/from16 v8, v20

    .line 2330
    .line 2331
    float-to-int v2, v8

    .line 2332
    iget-object v4, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 2333
    .line 2334
    iget-object v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 2335
    .line 2336
    iget-object v5, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    .line 2337
    .line 2338
    iget-boolean v6, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    .line 2339
    .line 2340
    iget v7, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    .line 2341
    .line 2342
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2343
    .line 2344
    .line 2345
    move-result v55

    .line 2346
    iget-boolean v9, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isInLookaheadScope:Z

    .line 2347
    .line 2348
    move-object/from16 v10, v21

    .line 2349
    .line 2350
    array-length v11, v10

    .line 2351
    if-eqz v11, :cond_88

    .line 2352
    .line 2353
    const/16 v32, 0x0

    .line 2354
    .line 2355
    aget v11, v10, v32

    .line 2356
    .line 2357
    array-length v13, v10

    .line 2358
    move-object/from16 v51, v0

    .line 2359
    .line 2360
    const/4 v0, 0x1

    .line 2361
    sub-int/2addr v13, v0

    .line 2362
    if-gt v0, v13, :cond_7f

    .line 2363
    .line 2364
    move-object/from16 v47, v1

    .line 2365
    .line 2366
    const/4 v0, 0x1

    .line 2367
    :goto_67
    aget v1, v10, v0

    .line 2368
    .line 2369
    if-le v11, v1, :cond_7d

    .line 2370
    .line 2371
    move v11, v1

    .line 2372
    :cond_7d
    if-eq v0, v13, :cond_7e

    .line 2373
    .line 2374
    add-int/lit8 v0, v0, 0x1

    .line 2375
    .line 2376
    goto :goto_67

    .line 2377
    :cond_7e
    :goto_68
    move/from16 v58, v11

    .line 2378
    .line 2379
    goto :goto_69

    .line 2380
    :cond_7f
    move-object/from16 v47, v1

    .line 2381
    .line 2382
    goto :goto_68

    .line 2383
    :goto_69
    invoke-static/range {v34 .. v34}, Lkotlin/collections/ArraysKt___ArraysKt;->maxOrThrow([I)I

    .line 2384
    .line 2385
    .line 2386
    move-result v0

    .line 2387
    add-int v59, v0, v22

    .line 2388
    .line 2389
    iget-object v0, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2390
    .line 2391
    iget-object v1, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 2392
    .line 2393
    move-object/from16 v60, v0

    .line 2394
    .line 2395
    move-object/from16 v61, v1

    .line 2396
    .line 2397
    move/from16 v48, v2

    .line 2398
    .line 2399
    move-object/from16 v52, v4

    .line 2400
    .line 2401
    move-object/from16 v53, v5

    .line 2402
    .line 2403
    move/from16 v54, v6

    .line 2404
    .line 2405
    move/from16 v56, v7

    .line 2406
    .line 2407
    move/from16 v57, v9

    .line 2408
    .line 2409
    invoke-virtual/range {v47 .. v61}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 2410
    .line 2411
    .line 2412
    move/from16 v1, v49

    .line 2413
    .line 2414
    move/from16 v0, v50

    .line 2415
    .line 2416
    move-object/from16 v2, v51

    .line 2417
    .line 2418
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2419
    .line 2420
    .line 2421
    move-result v4

    .line 2422
    if-nez v4, :cond_83

    .line 2423
    .line 2424
    iget-object v4, v12, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2425
    .line 2426
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 2427
    .line 2428
    .line 2429
    move-result-wide v4

    .line 2430
    const-wide/16 v6, 0x0

    .line 2431
    .line 2432
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 2433
    .line 2434
    .line 2435
    move-result v6

    .line 2436
    if-nez v6, :cond_83

    .line 2437
    .line 2438
    if-eqz v18, :cond_80

    .line 2439
    .line 2440
    move v6, v0

    .line 2441
    goto :goto_6a

    .line 2442
    :cond_80
    move v6, v1

    .line 2443
    :goto_6a
    shr-long v11, v4, v27

    .line 2444
    .line 2445
    long-to-int v7, v11

    .line 2446
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 2447
    .line 2448
    .line 2449
    move-result v1

    .line 2450
    move-wide/from16 v11, v62

    .line 2451
    .line 2452
    invoke-static {v11, v12, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 2453
    .line 2454
    .line 2455
    move-result v49

    .line 2456
    and-long v4, v4, v28

    .line 2457
    .line 2458
    long-to-int v1, v4

    .line 2459
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 2460
    .line 2461
    .line 2462
    move-result v0

    .line 2463
    invoke-static {v11, v12, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 2464
    .line 2465
    .line 2466
    move-result v50

    .line 2467
    if-eqz v18, :cond_81

    .line 2468
    .line 2469
    move/from16 v0, v50

    .line 2470
    .line 2471
    goto :goto_6b

    .line 2472
    :cond_81
    move/from16 v0, v49

    .line 2473
    .line 2474
    :goto_6b
    if-eq v0, v6, :cond_82

    .line 2475
    .line 2476
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2477
    .line 2478
    .line 2479
    move-result v1

    .line 2480
    const/4 v4, 0x0

    .line 2481
    :goto_6c
    if-ge v4, v1, :cond_82

    .line 2482
    .line 2483
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v5

    .line 2487
    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2488
    .line 2489
    iput v0, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 2490
    .line 2491
    iget v6, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    .line 2492
    .line 2493
    add-int/2addr v6, v0

    .line 2494
    iput v6, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 2495
    .line 2496
    add-int/lit8 v4, v4, 0x1

    .line 2497
    .line 2498
    goto :goto_6c

    .line 2499
    :cond_82
    move/from16 v7, v49

    .line 2500
    .line 2501
    move/from16 v9, v50

    .line 2502
    .line 2503
    goto :goto_6d

    .line 2504
    :cond_83
    move v9, v0

    .line 2505
    move v7, v1

    .line 2506
    :goto_6d
    move/from16 v6, v42

    .line 2507
    .line 2508
    const/4 v0, 0x0

    .line 2509
    :goto_6e
    if-ge v0, v6, :cond_85

    .line 2510
    .line 2511
    aget v1, v34, v0

    .line 2512
    .line 2513
    move/from16 v11, v24

    .line 2514
    .line 2515
    if-le v1, v11, :cond_84

    .line 2516
    .line 2517
    goto :goto_70

    .line 2518
    :cond_84
    add-int/lit8 v0, v0, 0x1

    .line 2519
    .line 2520
    move/from16 v24, v11

    .line 2521
    .line 2522
    goto :goto_6e

    .line 2523
    :cond_85
    array-length v0, v3

    .line 2524
    const/4 v1, 0x0

    .line 2525
    :goto_6f
    if-ge v1, v0, :cond_87

    .line 2526
    .line 2527
    aget v4, v3, v1

    .line 2528
    .line 2529
    add-int/lit8 v5, v35, -0x1

    .line 2530
    .line 2531
    if-ge v4, v5, :cond_86

    .line 2532
    .line 2533
    add-int/lit8 v1, v1, 0x1

    .line 2534
    .line 2535
    goto :goto_6f

    .line 2536
    :cond_86
    const/4 v11, 0x0

    .line 2537
    goto :goto_71

    .line 2538
    :cond_87
    :goto_70
    const/4 v11, 0x1

    .line 2539
    :goto_71
    iget-wide v3, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->contentOffset:J

    .line 2540
    .line 2541
    new-instance v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;

    .line 2542
    .line 2543
    const/4 v6, 0x2

    .line 2544
    move-object v1, v14

    .line 2545
    move-object/from16 v5, v17

    .line 2546
    .line 2547
    move-object/from16 v14, v23

    .line 2548
    .line 2549
    move-object/from16 v13, v33

    .line 2550
    .line 2551
    move/from16 v12, v35

    .line 2552
    .line 2553
    move-object/from16 v43, v39

    .line 2554
    .line 2555
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 2556
    .line 2557
    .line 2558
    move-object/from16 v65, v1

    .line 2559
    .line 2560
    move-object v1, v0

    .line 2561
    move-object/from16 v0, v65

    .line 2562
    .line 2563
    invoke-virtual {v5, v7, v9, v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v1

    .line 2567
    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    .line 2568
    .line 2569
    int-to-long v2, v7

    .line 2570
    shl-long v2, v2, v27

    .line 2571
    .line 2572
    int-to-long v6, v9

    .line 2573
    and-long v6, v6, v28

    .line 2574
    .line 2575
    or-long v19, v2, v6

    .line 2576
    .line 2577
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->beforeContentPadding:I

    .line 2578
    .line 2579
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->afterContentPadding:I

    .line 2580
    .line 2581
    iget v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisSpacing:I

    .line 2582
    .line 2583
    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 2584
    .line 2585
    move-object/from16 v18, v15

    .line 2586
    .line 2587
    iget-object v15, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;->spanProvider:Landroidx/appcompat/widget/PopupMenu$1;

    .line 2588
    .line 2589
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2590
    .line 2591
    move-object/from16 v16, v5

    .line 2592
    .line 2593
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 2594
    .line 2595
    move/from16 v21, p3

    .line 2596
    .line 2597
    move-object/from16 v26, v0

    .line 2598
    .line 2599
    move-object v9, v1

    .line 2600
    move/from16 v23, v2

    .line 2601
    .line 2602
    move/from16 v24, v3

    .line 2603
    .line 2604
    move/from16 v25, v4

    .line 2605
    .line 2606
    move-object v14, v6

    .line 2607
    move-object v7, v10

    .line 2608
    move/from16 v17, v35

    .line 2609
    .line 2610
    move/from16 v13, v37

    .line 2611
    .line 2612
    move-object/from16 v6, v43

    .line 2613
    .line 2614
    move/from16 v22, v46

    .line 2615
    .line 2616
    move/from16 v10, p4

    .line 2617
    .line 2618
    invoke-direct/range {v5 .. v26}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;FZZZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/unit/Density;ILjava/util/List;JIIIIILkotlinx/coroutines/CoroutineScope;)V

    .line 2619
    .line 2620
    .line 2621
    return-object v5

    .line 2622
    :cond_88
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 2623
    .line 2624
    .line 2625
    return-object v31

    .line 2626
    :cond_89
    move-object/from16 v2, v34

    .line 2627
    .line 2628
    move-object/from16 v34, v4

    .line 2629
    .line 2630
    move-object v4, v10

    .line 2631
    move-object/from16 v10, v45

    .line 2632
    .line 2633
    move/from16 v45, v12

    .line 2634
    .line 2635
    move-object v12, v2

    .line 2636
    move v6, v3

    .line 2637
    move/from16 v46, v9

    .line 2638
    .line 2639
    move-object v3, v15

    .line 2640
    move-object/from16 v11, v17

    .line 2641
    .line 2642
    move-object/from16 v35, v20

    .line 2643
    .line 2644
    move-wide/from16 v62, v24

    .line 2645
    .line 2646
    move-object/from16 v2, v33

    .line 2647
    .line 2648
    const/16 v30, -0x2

    .line 2649
    .line 2650
    move-object/from16 v9, p0

    .line 2651
    .line 2652
    move/from16 v15, p1

    .line 2653
    .line 2654
    move/from16 v17, p3

    .line 2655
    .line 2656
    move/from16 v25, v13

    .line 2657
    .line 2658
    invoke-virtual {v9, v4, v1, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;II)J

    .line 2659
    .line 2660
    .line 2661
    move-result-wide v13

    .line 2662
    move-object v0, v3

    .line 2663
    move-object/from16 v39, v4

    .line 2664
    .line 2665
    and-long v3, v13, v28

    .line 2666
    .line 2667
    long-to-int v3, v3

    .line 2668
    move-object/from16 p1, v10

    .line 2669
    .line 2670
    move-object v4, v11

    .line 2671
    shr-long v10, v13, v27

    .line 2672
    .line 2673
    long-to-int v10, v10

    .line 2674
    sub-int v11, v3, v10

    .line 2675
    .line 2676
    move-object/from16 v20, v0

    .line 2677
    .line 2678
    const/4 v0, 0x1

    .line 2679
    if-eq v11, v0, :cond_8a

    .line 2680
    .line 2681
    move/from16 v0, v30

    .line 2682
    .line 2683
    goto :goto_72

    .line 2684
    :cond_8a
    move v0, v10

    .line 2685
    :goto_72
    invoke-virtual {v7, v1, v0}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 2686
    .line 2687
    .line 2688
    invoke-virtual {v5, v13, v14, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->getAndMeasure-jy6DScQ(JI)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 2689
    .line 2690
    .line 2691
    move-result-object v0

    .line 2692
    move-object/from16 v24, v4

    .line 2693
    .line 2694
    move-object/from16 v4, v34

    .line 2695
    .line 2696
    invoke-static {v13, v14, v4}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 2697
    .line 2698
    .line 2699
    move-result v13

    .line 2700
    const/4 v14, 0x1

    .line 2701
    if-eq v11, v14, :cond_8b

    .line 2702
    .line 2703
    invoke-virtual {v7, v1}, Lokhttp3/internal/http/StatusLine;->getGaps(I)[I

    .line 2704
    .line 2705
    .line 2706
    move-result-object v11

    .line 2707
    move/from16 v14, v25

    .line 2708
    .line 2709
    if-nez v11, :cond_8c

    .line 2710
    .line 2711
    new-array v11, v14, [I

    .line 2712
    .line 2713
    goto :goto_73

    .line 2714
    :cond_8b
    move/from16 v14, v25

    .line 2715
    .line 2716
    move-object/from16 v11, v31

    .line 2717
    .line 2718
    :cond_8c
    :goto_73
    move-object/from16 v34, v4

    .line 2719
    .line 2720
    move v4, v10

    .line 2721
    :goto_74
    if-ge v4, v3, :cond_8e

    .line 2722
    .line 2723
    if-eqz v11, :cond_8d

    .line 2724
    .line 2725
    aget v25, v34, v4

    .line 2726
    .line 2727
    sub-int v25, v13, v25

    .line 2728
    .line 2729
    aput v25, v11, v4

    .line 2730
    .line 2731
    :cond_8d
    aput v1, v20, v4

    .line 2732
    .line 2733
    move/from16 v25, v3

    .line 2734
    .line 2735
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 2736
    .line 2737
    add-int/2addr v3, v13

    .line 2738
    aput v3, v34, v4

    .line 2739
    .line 2740
    aget-object v3, v38, v4

    .line 2741
    .line 2742
    invoke-virtual {v3, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2743
    .line 2744
    .line 2745
    add-int/lit8 v4, v4, 0x1

    .line 2746
    .line 2747
    move/from16 v3, v25

    .line 2748
    .line 2749
    goto :goto_74

    .line 2750
    :cond_8e
    iget-object v3, v7, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 2751
    .line 2752
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 2753
    .line 2754
    invoke-static {v3, v1}, Lokhttp3/internal/http/StatusLine;->searchByIndex(Ljava/util/List;I)I

    .line 2755
    .line 2756
    .line 2757
    move-result v4

    .line 2758
    if-gez v4, :cond_90

    .line 2759
    .line 2760
    if-nez v11, :cond_8f

    .line 2761
    .line 2762
    move/from16 v25, v6

    .line 2763
    .line 2764
    goto :goto_75

    .line 2765
    :cond_8f
    add-int/lit8 v4, v4, 0x1

    .line 2766
    .line 2767
    neg-int v4, v4

    .line 2768
    move/from16 v25, v6

    .line 2769
    .line 2770
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;

    .line 2771
    .line 2772
    invoke-direct {v6, v11, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;-><init>([II)V

    .line 2773
    .line 2774
    .line 2775
    invoke-virtual {v3, v4, v6}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 2776
    .line 2777
    .line 2778
    goto :goto_75

    .line 2779
    :cond_90
    move/from16 v25, v6

    .line 2780
    .line 2781
    if-nez v11, :cond_91

    .line 2782
    .line 2783
    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 2784
    .line 2785
    .line 2786
    goto :goto_75

    .line 2787
    :cond_91
    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v1

    .line 2791
    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;

    .line 2792
    .line 2793
    iput-object v11, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;->gaps:[I

    .line 2794
    .line 2795
    :goto_75
    if-ge v13, v8, :cond_92

    .line 2796
    .line 2797
    aget v1, v34, v10

    .line 2798
    .line 2799
    if-gt v1, v8, :cond_92

    .line 2800
    .line 2801
    const/4 v6, 0x0

    .line 2802
    iput-boolean v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 2803
    .line 2804
    :cond_92
    move/from16 p3, v45

    .line 2805
    .line 2806
    move-object/from16 v45, p1

    .line 2807
    .line 2808
    move/from16 p1, v15

    .line 2809
    .line 2810
    move-object/from16 v15, v20

    .line 2811
    .line 2812
    move-object/from16 v20, v35

    .line 2813
    .line 2814
    move/from16 v35, p3

    .line 2815
    .line 2816
    move-object/from16 v33, v2

    .line 2817
    .line 2818
    move v13, v14

    .line 2819
    move/from16 p3, v17

    .line 2820
    .line 2821
    move-object/from16 v17, v24

    .line 2822
    .line 2823
    move/from16 v3, v25

    .line 2824
    .line 2825
    move-object/from16 v4, v34

    .line 2826
    .line 2827
    move-object/from16 v10, v39

    .line 2828
    .line 2829
    move/from16 v9, v46

    .line 2830
    .line 2831
    move-wide/from16 v24, v62

    .line 2832
    .line 2833
    move-object/from16 v34, v12

    .line 2834
    .line 2835
    goto/16 :goto_1c

    .line 2836
    .line 2837
    :goto_76
    invoke-static/range {v62 .. v63}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 2838
    .line 2839
    .line 2840
    move-result v49

    .line 2841
    invoke-static/range {v62 .. v63}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 2842
    .line 2843
    .line 2844
    move-result v50

    .line 2845
    iget-object v0, v12, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2846
    .line 2847
    new-instance v51, Ljava/util/ArrayList;

    .line 2848
    .line 2849
    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 2850
    .line 2851
    .line 2852
    iget-object v1, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 2853
    .line 2854
    iget-object v1, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 2855
    .line 2856
    iget-object v3, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    .line 2857
    .line 2858
    iget v4, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    .line 2859
    .line 2860
    iget-boolean v5, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    .line 2861
    .line 2862
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2863
    .line 2864
    .line 2865
    move-result v55

    .line 2866
    iget-boolean v6, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isInLookaheadScope:Z

    .line 2867
    .line 2868
    iget-object v7, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2869
    .line 2870
    iget-object v8, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 2871
    .line 2872
    const/16 v58, 0x0

    .line 2873
    .line 2874
    const/16 v59, 0x0

    .line 2875
    .line 2876
    const/16 v48, 0x0

    .line 2877
    .line 2878
    move-object/from16 v47, v0

    .line 2879
    .line 2880
    move-object/from16 v52, v1

    .line 2881
    .line 2882
    move-object/from16 v53, v3

    .line 2883
    .line 2884
    move/from16 v56, v4

    .line 2885
    .line 2886
    move/from16 v54, v5

    .line 2887
    .line 2888
    move/from16 v57, v6

    .line 2889
    .line 2890
    move-object/from16 v60, v7

    .line 2891
    .line 2892
    move-object/from16 v61, v8

    .line 2893
    .line 2894
    invoke-virtual/range {v47 .. v61}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 2895
    .line 2896
    .line 2897
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2898
    .line 2899
    .line 2900
    move-result v0

    .line 2901
    if-nez v0, :cond_93

    .line 2902
    .line 2903
    iget-object v0, v12, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2904
    .line 2905
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 2906
    .line 2907
    .line 2908
    move-result-wide v0

    .line 2909
    const-wide/16 v6, 0x0

    .line 2910
    .line 2911
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 2912
    .line 2913
    .line 2914
    move-result v3

    .line 2915
    if-nez v3, :cond_93

    .line 2916
    .line 2917
    shr-long v3, v0, v27

    .line 2918
    .line 2919
    long-to-int v3, v3

    .line 2920
    move-wide/from16 v11, v62

    .line 2921
    .line 2922
    invoke-static {v11, v12, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 2923
    .line 2924
    .line 2925
    move-result v49

    .line 2926
    and-long v0, v0, v28

    .line 2927
    .line 2928
    long-to-int v0, v0

    .line 2929
    invoke-static {v11, v12, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 2930
    .line 2931
    .line 2932
    move-result v50

    .line 2933
    :goto_77
    move/from16 v0, v49

    .line 2934
    .line 2935
    move/from16 v1, v50

    .line 2936
    .line 2937
    goto :goto_78

    .line 2938
    :cond_93
    move-wide/from16 v11, v62

    .line 2939
    .line 2940
    goto :goto_77

    .line 2941
    :goto_78
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 2942
    .line 2943
    const/16 v4, 0x14

    .line 2944
    .line 2945
    invoke-direct {v3, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 2946
    .line 2947
    .line 2948
    move-object/from16 v5, v24

    .line 2949
    .line 2950
    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2951
    .line 2952
    .line 2953
    move-result-object v4

    .line 2954
    iget-boolean v7, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    .line 2955
    .line 2956
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 2957
    .line 2958
    .line 2959
    move-result v0

    .line 2960
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 2961
    .line 2962
    .line 2963
    move-result v1

    .line 2964
    int-to-long v2, v0

    .line 2965
    shl-long v2, v2, v27

    .line 2966
    .line 2967
    int-to-long v0, v1

    .line 2968
    and-long v0, v0, v28

    .line 2969
    .line 2970
    or-long v14, v2, v0

    .line 2971
    .line 2972
    iget v0, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->beforeContentPadding:I

    .line 2973
    .line 2974
    neg-int v1, v0

    .line 2975
    iget v2, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->afterContentPadding:I

    .line 2976
    .line 2977
    add-int v17, v42, v2

    .line 2978
    .line 2979
    iget v3, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisSpacing:I

    .line 2980
    .line 2981
    iget-object v6, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 2982
    .line 2983
    move-object/from16 v8, v23

    .line 2984
    .line 2985
    iget-object v10, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;->spanProvider:Landroidx/appcompat/widget/PopupMenu$1;

    .line 2986
    .line 2987
    iget-object v8, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2988
    .line 2989
    move/from16 v18, v0

    .line 2990
    .line 2991
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 2992
    .line 2993
    move-object v9, v6

    .line 2994
    const/4 v6, 0x0

    .line 2995
    move-object/from16 v21, v8

    .line 2996
    .line 2997
    const/4 v8, 0x0

    .line 2998
    move/from16 v20, v3

    .line 2999
    .line 3000
    const/4 v3, 0x0

    .line 3001
    move-object v11, v5

    .line 3002
    const/4 v5, 0x0

    .line 3003
    move/from16 v16, v1

    .line 3004
    .line 3005
    move/from16 v19, v2

    .line 3006
    .line 3007
    move-object/from16 v13, v26

    .line 3008
    .line 3009
    move/from16 v12, v45

    .line 3010
    .line 3011
    move-object/from16 v1, p2

    .line 3012
    .line 3013
    move-object/from16 v2, p3

    .line 3014
    .line 3015
    invoke-direct/range {v0 .. v21}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;FZZZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/unit/Density;ILjava/util/List;JIIIIILkotlinx/coroutines/CoroutineScope;)V

    .line 3016
    .line 3017
    .line 3018
    return-object v0
.end method

.method public static final measure$lambda$0$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z
    .locals 6

    .line 1
    iget-object p1, p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneInfo:Lokhttp3/internal/http/StatusLine;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, -0x1

    .line 7
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    aget v4, p0, v2

    .line 10
    .line 11
    invoke-virtual {p1, v4, v2}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, v3, :cond_0

    .line 16
    .line 17
    aget v3, p2, v2

    .line 18
    .line 19
    aget v4, p2, p3

    .line 20
    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    array-length v0, p0

    .line 28
    move v2, v1

    .line 29
    :goto_1
    if-ge v2, v0, :cond_3

    .line 30
    .line 31
    aget v4, p0, v2

    .line 32
    .line 33
    invoke-virtual {p1, v4, v2}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eq v4, v3, :cond_2

    .line 38
    .line 39
    aget v4, p2, v2

    .line 40
    .line 41
    aget v5, p2, p3

    .line 42
    .line 43
    if-lt v4, v5, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p1, v1}, Lokhttp3/internal/http/StatusLine;->getLane(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    if-eq p0, v3, :cond_4

    .line 56
    .line 57
    const/4 p1, -0x2

    .line 58
    if-eq p0, p1, :cond_4

    .line 59
    .line 60
    :goto_2
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_4
    return v1
.end method

.method public static varargs mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 11
    .line 12
    const-string v0, "String must not be empty"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Object must not be null"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static final offsetBy([II)V
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    add-int/2addr v2, p1

    .line 8
    aput v2, p0, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static final optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final provideContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eq v2, v4, :cond_1

    .line 36
    .line 37
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-object v2, Landroidx/glance/appwidget/ContentReceiver$Key;->$$INSTANCE:Landroidx/glance/appwidget/ContentReceiver$Key;

    .line 56
    .line 57
    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/glance/appwidget/AppWidgetUtilsKt$runGlance$1$receiver$1;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iput v4, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$provideContent$1;->label:I

    .line 66
    .line 67
    invoke-virtual {p1, p0, v0}, Landroidx/glance/appwidget/AppWidgetUtilsKt$runGlance$1$receiver$1;->provideContent(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-ne p0, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 75
    .line 76
    .line 77
    return-object v3

    .line 78
    :cond_4
    const-string p0, "provideContent requires a ContentReceiver and should only be called from GlanceAppWidget.provideGlance"

    .line 79
    .line 80
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v3
.end method

.method public static final rangeCheck$CollectionsKt__CollectionsKt(II)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-gt p1, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "toIndex ("

    .line 7
    .line 8
    const-string v1, ") is greater than size ("

    .line 9
    .line 10
    invoke-static {p1, p0, v1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(IILjava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const-string p0, "fromIndex (0) is greater than toIndex ("

    .line 15
    .line 16
    const-string v0, ")."

    .line 17
    .line 18
    invoke-static {p1, p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static read(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0xffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "Cannot read metadata."

    .line 31
    .line 32
    if-gt v0, v1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, 0x6

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    move v4, v1

    .line 45
    :goto_0
    const-wide v5, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide/16 v7, -0x1

    .line 51
    .line 52
    if-ge v4, v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    add-int/lit8 v10, v10, 0x4

    .line 63
    .line 64
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    int-to-long v10, v10

    .line 72
    and-long/2addr v10, v5

    .line 73
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    add-int/lit8 v12, v12, 0x4

    .line 78
    .line 79
    invoke-virtual {p0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    const v12, 0x6d657461

    .line 83
    .line 84
    .line 85
    if-ne v12, v9, :cond_0

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-wide v10, v7

    .line 92
    :goto_1
    cmp-long v0, v10, v7

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-long v7, v0

    .line 101
    sub-long v7, v10, v7

    .line 102
    .line 103
    long-to-int v0, v7

    .line 104
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    add-int/2addr v4, v0

    .line 109
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/lit8 v0, v0, 0xc

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    int-to-long v7, v0

    .line 126
    and-long/2addr v7, v5

    .line 127
    :goto_2
    int-to-long v12, v1

    .line 128
    cmp-long v0, v12, v7

    .line 129
    .line 130
    if-gez v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    int-to-long v12, v4

    .line 141
    and-long/2addr v12, v5

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 143
    .line 144
    .line 145
    const v4, 0x456d6a69

    .line 146
    .line 147
    .line 148
    if-eq v4, v0, :cond_3

    .line 149
    .line 150
    const v4, 0x656d6a69

    .line 151
    .line 152
    .line 153
    if-ne v4, v0, :cond_2

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    :goto_3
    add-long/2addr v12, v10

    .line 160
    long-to-int v0, v12

    .line 161
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    .line 163
    .line 164
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 165
    .line 166
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    .line 167
    .line 168
    .line 169
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    add-int/2addr v2, v1

    .line 187
    iput-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/lang/Object;

    .line 188
    .line 189
    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    sub-int/2addr v2, p0

    .line 196
    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 197
    .line 198
    iget-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    iput p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object v2

    .line 213
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-object v2
.end method

.method public static final removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p0, 0x2

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final removeNodeAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p0, 0x1

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final synthetic resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Canvas;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object p0
.end method

.method public static throwCountOverflow()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 2
    .line 3
    const-string v1, "Count overflow has happened."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static throwIndexOverflow()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 2
    .line 3
    const-string v1, "Index overflow has happened."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static final tint(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final updateAll(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;

    .line 9
    .line 10
    iget v2, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->label:I

    .line 11
    .line 12
    and-int v3, v2, v1

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v2, v1

    .line 17
    iput v2, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v3, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->label:I

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    if-eq v3, v6, :cond_2

    .line 37
    .line 38
    if-ne v3, v5, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$2:Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$1:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_2
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$1:Landroid/content/Context;

    .line 57
    .line 58
    iget-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroidx/glance/appwidget/GlanceAppWidgetManager;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Landroidx/glance/appwidget/GlanceAppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 77
    .line 78
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$1:Landroid/content/Context;

    .line 79
    .line 80
    iput v6, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->label:I

    .line 81
    .line 82
    invoke-virtual {p2, v3, v0}, Landroidx/glance/appwidget/GlanceAppWidgetManager;->getGlanceIds(Ljava/lang/Class;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-ne p2, v2, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    move-object v3, p0

    .line 96
    move-object p0, p2

    .line 97
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    if-eqz p2, :cond_9

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Landroidx/glance/appwidget/AppWidgetId;

    .line 110
    .line 111
    iput-object v3, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 112
    .line 113
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$1:Landroid/content/Context;

    .line 114
    .line 115
    iput-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->L$2:Ljava/util/Iterator;

    .line 116
    .line 117
    iput v5, v0, Landroidx/glance/appwidget/GlanceAppWidgetKt$updateAll$1;->label:I

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    if-eqz p2, :cond_8

    .line 123
    .line 124
    iget p2, p2, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 125
    .line 126
    if-gt v1, p2, :cond_6

    .line 127
    .line 128
    const/4 v7, -0x1

    .line 129
    if-lt p2, v7, :cond_8

    .line 130
    .line 131
    :cond_6
    invoke-static {v3, p1, p2, v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->update$glance_appwidget_release$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 136
    .line 137
    if-ne p2, v7, :cond_7

    .line 138
    .line 139
    move-object v6, p2

    .line 140
    :cond_7
    if-ne v6, v2, :cond_5

    .line 141
    .line 142
    :goto_3
    return-object v2

    .line 143
    :cond_8
    const-string p0, "Invalid Glance ID"

    .line 144
    .line 145
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :cond_9
    return-object v6
.end method


# virtual methods
.method public abstract getSize(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract getViewEdge()I
.end method

.method public abstract getViewTranslationAnimator(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/Room;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Landroidx/room/Room;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public abstract next(I)I
.end method

.method public nextEndBoundary(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/Room;->next(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public nextStartBoundary(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/Room;->next(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/room/Room;->next(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return v0

    .line 16
    :cond_1
    return p1
.end method

.method public abstract previous(I)I
.end method

.method public previousEndBoundary(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/Room;->previous(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/room/Room;->previous(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return v0

    .line 16
    :cond_1
    return p1
.end method

.method public previousStartBoundary(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/Room;->previous(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/Room;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

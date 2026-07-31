.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public canOverride:Z

.field public final compositionLocal:Ljava/lang/Object;

.field public explicitNull:Z

.field public isDynamic:Z

.field public mutationPolicy:Ljava/lang/Object;

.field public providedValue:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 60
    iput p2, p0, Landroidx/compose/runtime/ProvidedValue;->$r8$classId:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    iput-boolean p2, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/NeverEqualPolicy;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ProvidedValue;->$r8$classId:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 55
    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 56
    iput-object p4, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 57
    iput-boolean p5, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 58
    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/runtime/ProvidedValue;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move-object p2, p1

    .line 24
    :goto_1
    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz p4, :cond_3

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const-string p0, "Cannot pass true for \'explName\' if name is null/empty"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    :goto_2
    iput-boolean p4, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 47
    .line 48
    iput-boolean p5, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 49
    .line 50
    iput-boolean p6, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ProvidedValue;->append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public applyButtonTint()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/CompoundButton;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public applyCheckMarkTint()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public getEffectiveValue$runtime()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const-string p0, "Unexpected form of a provided value"

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/widget/CompoundButton;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v6, 0x0

    .line 11
    sget-object v2, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    .line 12
    .line 13
    invoke-static {p2, v6, p0, p1, v2}, Lcom/caverock/androidsvg/SVG;->obtainStyledAttributes(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/caverock/androidsvg/SVG;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v7, v1

    .line 20
    check-cast v7, Landroid/content/res/TypedArray;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Landroid/content/res/TypedArray;

    .line 30
    .line 31
    move-object v3, p1

    .line 32
    move v5, p2

    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v7, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object p1, v0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v7, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 88
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    const/4 p1, 0x3

    .line 102
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    const/4 p2, -0x1

    .line 109
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/4 p2, 0x0

    .line 114
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->recycle()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->recycle()V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/runtime/ProvidedValue;->$r8$classId:I

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
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 20
    .line 21
    iget-boolean v3, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "[visible="

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ",ignore="

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ",explicitName="

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "]"

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroidx/compose/runtime/ProvidedValue;

    .line 67
    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, ", "

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/runtime/ProvidedValue;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_0
    return-object v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public trimByVisibility()Landroidx/compose/runtime/ProvidedValue;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ProvidedValue;->trimByVisibility()Landroidx/compose/runtime/ProvidedValue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    iget-object v1, v0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 43
    .line 44
    iget-boolean v3, v0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 45
    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_5
    :goto_0
    return-object v0
.end method

.method public withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Landroidx/compose/runtime/ProvidedValue;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 16
    .line 17
    iget-boolean v5, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 18
    .line 19
    iget-boolean v6, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 20
    .line 21
    iget-boolean v7, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public withoutIgnored()Landroidx/compose/runtime/ProvidedValue;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/ProvidedValue;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    return-object p0
.end method

.method public withoutNext()Landroidx/compose/runtime/ProvidedValue;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Landroidx/compose/runtime/ProvidedValue;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 16
    .line 17
    iget-boolean v5, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 18
    .line 19
    iget-boolean v6, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 20
    .line 21
    iget-boolean v7, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ProvidedValue;->withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ProvidedValue;->withNext(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    return-object v0
.end method

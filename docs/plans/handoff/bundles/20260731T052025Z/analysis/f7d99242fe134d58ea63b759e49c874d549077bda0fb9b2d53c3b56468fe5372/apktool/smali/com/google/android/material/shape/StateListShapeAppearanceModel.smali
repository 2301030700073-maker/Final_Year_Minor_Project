.class public final Lcom/google/android/material/shape/StateListShapeAppearanceModel;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearance;


# instance fields
.field public final defaultShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final shapeAppearanceModels:[Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final stateCount:I

.field public final stateSpecs:[[I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/SharingConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateCount:I

    .line 7
    .line 8
    iget-object v0, p1, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->defaultShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 13
    .line 14
    iget-object v0, p1, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [[I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateSpecs:[[I

    .line 19
    .line 20
    iget-object p1, p1, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->shapeAppearanceModels:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 25
    .line 26
    return-void
.end method

.method public static access$000(Lkotlinx/coroutines/flow/SharingConfig;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_b

    .line 12
    .line 13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v3, v0, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v2, v4, :cond_b

    .line 21
    .line 22
    :cond_1
    const/4 v4, 0x2

    .line 23
    if-ne v2, v4, :cond_0

    .line 24
    .line 25
    if-gt v3, v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "item"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-nez p4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p4, p3, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_1
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    new-instance v6, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-direct {v6, v7}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 70
    .line 71
    .line 72
    new-instance v7, Landroid/view/ContextThemeWrapper;

    .line 73
    .line 74
    invoke-direct {v7, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_4
    sget-object v3, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    .line 87
    .line 88
    invoke-virtual {v7, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/res/TypedArray;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    new-array v5, v2, [I

    .line 108
    .line 109
    move v6, v4

    .line 110
    move v7, v6

    .line 111
    :goto_2
    if-ge v6, v2, :cond_7

    .line 112
    .line 113
    invoke-interface {p3, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    const v9, 0x7f04050b

    .line 118
    .line 119
    .line 120
    if-eq v8, v9, :cond_6

    .line 121
    .line 122
    const v9, 0x7f040516

    .line 123
    .line 124
    .line 125
    if-eq v8, v9, :cond_6

    .line 126
    .line 127
    add-int/lit8 v9, v7, 0x1

    .line 128
    .line 129
    invoke-interface {p3, v6, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    neg-int v8, v8

    .line 137
    :goto_3
    aput v8, v5, v7

    .line 138
    .line 139
    move v7, v9

    .line 140
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-static {v5, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget v5, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 148
    .line 149
    if-eqz v5, :cond_8

    .line 150
    .line 151
    array-length v6, v2

    .line 152
    if-nez v6, :cond_9

    .line 153
    .line 154
    :cond_8
    iput-object v3, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 155
    .line 156
    :cond_9
    iget-object v6, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v6, [[I

    .line 159
    .line 160
    array-length v7, v6

    .line 161
    if-lt v5, v7, :cond_a

    .line 162
    .line 163
    add-int/lit8 v7, v5, 0xa

    .line 164
    .line 165
    new-array v8, v7, [[I

    .line 166
    .line 167
    invoke-static {v6, v4, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    .line 169
    .line 170
    iput-object v8, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 171
    .line 172
    new-array v6, v7, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 173
    .line 174
    iget-object v7, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v7, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 177
    .line 178
    invoke-static {v7, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .line 180
    .line 181
    iput-object v6, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 182
    .line 183
    :cond_a
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v4, [[I

    .line 186
    .line 187
    iget v5, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 188
    .line 189
    aput-object v2, v4, v5

    .line 190
    .line 191
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v2, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 194
    .line 195
    aput-object v3, v2, v5

    .line 196
    .line 197
    add-int/2addr v5, v1

    .line 198
    iput v5, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_b
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "xml"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :goto_0
    return-object p2

    .line 28
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 29
    .line 30
    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    new-array v2, v1, [[I

    .line 43
    .line 44
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 45
    .line 46
    new-array v2, v1, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 47
    .line 48
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v4, 0x2

    .line 67
    if-eq v3, v4, :cond_2

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    if-eq v3, v5, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    if-ne v3, v4, :cond_4

    .line 74
    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "selector"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v0, p0, p1, v2, v3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->access$000(Lkotlinx/coroutines/flow/SharingConfig;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_4
    :try_start_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 102
    .line 103
    const-string v2, "No start tag found"

    .line 104
    .line 105
    invoke-direct {p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :goto_3
    if-eqz p1, :cond_5

    .line 110
    .line 111
    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_4
    throw p0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 120
    :catch_0
    new-instance p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 126
    .line 127
    new-array p0, v1, [[I

    .line 128
    .line 129
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 130
    .line 131
    new-array p0, v1, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 132
    .line 133
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 134
    .line 135
    :goto_5
    iget p0, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 136
    .line 137
    if-nez p0, :cond_6

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_6
    new-instance p2, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 141
    .line 142
    invoke-direct {p2, v0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;-><init>(Lkotlinx/coroutines/flow/SharingConfig;)V

    .line 143
    .line 144
    .line 145
    :goto_6
    return-object p2
.end method


# virtual methods
.method public final getDefaultShape()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->defaultShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShapeAppearanceModels()[Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->shapeAppearanceModels:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShapeForState([I)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, -0x1

    .line 4
    iget v3, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateCount:I

    .line 5
    .line 6
    iget-object v4, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateSpecs:[[I

    .line 7
    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    aget-object v5, v4, v1

    .line 11
    .line 12
    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_1
    if-gez v1, :cond_4

    .line 24
    .line 25
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 26
    .line 27
    :goto_2
    if-ge v0, v3, :cond_3

    .line 28
    .line 29
    aget-object v1, v4, v0

    .line 30
    .line 31
    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v2, v0

    .line 38
    goto :goto_3

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_3
    move v1, v2

    .line 43
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->shapeAppearanceModels:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 44
    .line 45
    aget-object p0, p0, v1

    .line 46
    .line 47
    return-object p0
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateCount:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    return v0
.end method

.method public final withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->defaultShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

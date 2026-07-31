.class public abstract synthetic Lcoil3/size/ViewSizeResolver$-CC;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static $default$asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 9

    .line 1
    new-instance v5, Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-direct {v5, v0, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v1, p1

    .line 15
    move-wide v3, p2

    .line 16
    invoke-direct/range {v0 .. v8}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static $default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static $default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/sqlite/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static $default$then(Landroidx/glance/GlanceModifier;Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Landroidx/glance/CombinedGlanceModifier;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/glance/CombinedGlanceModifier;-><init>(Landroidx/glance/GlanceModifier;Landroidx/glance/GlanceModifier;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static $default$toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;
    .locals 2

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/runtime/Latch;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroidx/compose/runtime/Latch;-><init>(Lokio/Buffer;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v1, p1}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-wide p0, v0, Lokio/Buffer;->size:J

    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static $default$withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 9

    .line 1
    new-instance v5, Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v5, v0, p0, p4, v1}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const-string v1, "EXPLICIT"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move v2, p1

    .line 17
    move-wide v3, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static $private$getDimension(III)Lcoil3/size/Dimension;
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcoil3/size/Dimension$Undefined;->INSTANCE:Lcoil3/size/Dimension$Undefined;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    sub-int/2addr p0, p2

    .line 8
    if-lez p0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Lcoil3/size/Dimension$Pixels;->constructor-impl(I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcoil3/size/Dimension$Pixels;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    sub-int/2addr p1, p2

    .line 20
    if-lez p1, :cond_2

    .line 21
    .line 22
    invoke-static {p1}, Lcoil3/size/Dimension$Pixels;->constructor-impl(I)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcoil3/size/Dimension$Pixels;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static $private$getSize(Lcoil3/size/RealViewSizeResolver;)Lcoil3/size/Size;
    .locals 5

    .line 1
    iget-object p0, p0, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    add-int/2addr v4, v3

    .line 27
    invoke-static {v0, v2, v4}, Lcoil3/size/ViewSizeResolver$-CC;->$private$getDimension(III)Lcoil3/size/Dimension;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/2addr p0, v3

    .line 55
    invoke-static {v1, v2, p0}, Lcoil3/size/ViewSizeResolver$-CC;->$private$getDimension(III)Lcoil3/size/Dimension;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    :goto_1
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :cond_3
    new-instance v1, Lcoil3/size/Size;

    .line 64
    .line 65
    invoke-direct {v1, v0, p0}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public static synthetic asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 3

    .line 1
    const-string v0, "SEQUENCE OF"

    .line 2
    .line 3
    const-wide/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {p0, v0, v1, v2}, Lokhttp3/tls/internal/der/DerAdapter;->asSequenceOf(Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;->$itemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lkotlin/Pair;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static m(Landroidx/glance/unit/ResourceColorProvider;II)I
    .locals 0

    .line 137
    iget p0, p0, Landroidx/glance/unit/ResourceColorProvider;->resId:I

    add-int/2addr p0, p1

    mul-int/2addr p0, p2

    return p0
.end method

.method public static m(Lorg/xml/sax/Attributes;I)I
    .locals 0

    .line 75
    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    new-instance p0, Landroid/util/TypedValue;

    .line 80
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    return-object p0
.end method

.method public static m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 82
    new-instance p0, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 83
    invoke-direct {p0, p3, p4}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    return-object p0
.end method

.method public static m(Lcom/google/gson/Gson;Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
    .locals 1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    .line 86
    invoke-direct {v0, p1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 109
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 112
    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 114
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 116
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 1

    .line 117
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static m(ILandroidx/glance/appwidget/BoxChildSelector;)Lkotlin/Pair;
    .locals 1

    .line 120
    new-instance v0, Landroidx/glance/appwidget/LayoutInfo;

    .line 121
    invoke-direct {v0, p0}, Landroidx/glance/appwidget/LayoutInfo;-><init>(I)V

    .line 122
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static m(ILandroidx/glance/appwidget/ContainerSelector;)Lkotlin/Pair;
    .locals 1

    .line 123
    new-instance v0, Landroidx/glance/appwidget/ContainerInfo;

    .line 124
    invoke-direct {v0, p0}, Landroidx/glance/appwidget/ContainerInfo;-><init>(I)V

    .line 125
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static m(ILandroidx/glance/appwidget/RowColumnChildSelector;)Lkotlin/Pair;
    .locals 1

    .line 126
    new-instance v0, Landroidx/glance/appwidget/LayoutInfo;

    .line 127
    invoke-direct {v0, p0}, Landroidx/glance/appwidget/LayoutInfo;-><init>(I)V

    .line 128
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static m()Lkotlinx/coroutines/flow/StateFlowImpl;
    .locals 1

    .line 129
    new-instance v0, Lorg/wikipedia/util/Resource;

    .line 130
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    return-object v0
.end method

.method public static m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 133
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 135
    invoke-virtual {p1, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic m(Ljava/lang/AutoCloseable;)V
    .locals 1

    .line 136
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lorg/wikipedia/util/GeoUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_1
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    return-void

    :cond_4
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    return-void

    :cond_5
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/AutoCloseable;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    invoke-static {p0}, Lorg/wikipedia/util/GeoUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p0, Landroid/content/res/TypedArray;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast p0, Landroid/media/MediaDrm;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_5
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-static {p2, p3, p4}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public static m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z
    .locals 1

    .line 141
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 143
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic m$1(Ljava/lang/AutoCloseable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-static {p0}, Lorg/wikipedia/util/GeoUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p0, Landroid/content/res/TypedArray;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    check-cast p0, Landroid/media/MediaDrm;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static upsertAll$suspendImpl(Lorg/wikipedia/categories/db/CategoryDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;-><init>(Lorg/wikipedia/categories/db/CategoryDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 36
    .line 37
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    if-eq v4, v8, :cond_3

    .line 47
    .line 48
    if-eq v4, v7, :cond_2

    .line 49
    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    iget v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 53
    .line 54
    iget-object v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 55
    .line 56
    iget-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move v0, v6

    .line 62
    move v6, v2

    .line 63
    move-object v2, v11

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v10

    .line 72
    :cond_2
    iget v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 73
    .line 74
    iget-object v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 75
    .line 76
    iget-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    iget v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$1:I

    .line 84
    .line 85
    iget v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 86
    .line 87
    iget-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$5:Lorg/wikipedia/categories/db/Category;

    .line 88
    .line 89
    iget-object v12, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 90
    .line 91
    iget-object v13, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move v6, v4

    .line 97
    move v4, v2

    .line 98
    move v2, v6

    .line 99
    move-object v6, v11

    .line 100
    move-object v11, v13

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move v4, v9

    .line 110
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-eqz v11, :cond_a

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    check-cast v11, Lorg/wikipedia/categories/db/Category;

    .line 121
    .line 122
    iget v13, v11, Lorg/wikipedia/categories/db/Category;->year:I

    .line 123
    .line 124
    iget v14, v11, Lorg/wikipedia/categories/db/Category;->month:I

    .line 125
    .line 126
    iget-object v12, v11, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v15, v11, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 131
    .line 132
    iput-object v0, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 133
    .line 134
    iput-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$5:Lorg/wikipedia/categories/db/Category;

    .line 135
    .line 136
    iput v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 137
    .line 138
    iput v9, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$1:I

    .line 139
    .line 140
    iput v8, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 141
    .line 142
    iget-object v6, v2, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 143
    .line 144
    move-object/from16 v16, v12

    .line 145
    .line 146
    new-instance v12, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;

    .line 147
    .line 148
    move-object/from16 v17, v15

    .line 149
    .line 150
    const/4 v15, 0x0

    .line 151
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v8, v9, v12, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-ne v6, v3, :cond_5

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_5
    move-object v12, v0

    .line 162
    move-object v0, v6

    .line 163
    move-object v6, v11

    .line 164
    move-object v11, v2

    .line 165
    move v2, v4

    .line 166
    move v4, v9

    .line 167
    :goto_2
    check-cast v0, Lorg/wikipedia/categories/db/Category;

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    iget v14, v6, Lorg/wikipedia/categories/db/Category;->year:I

    .line 172
    .line 173
    iget v15, v6, Lorg/wikipedia/categories/db/Category;->month:I

    .line 174
    .line 175
    iget-object v0, v6, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v13, v6, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 180
    .line 181
    iput-object v12, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 182
    .line 183
    iput-object v6, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$5:Lorg/wikipedia/categories/db/Category;

    .line 184
    .line 185
    iput v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 186
    .line 187
    iput v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$1:I

    .line 188
    .line 189
    iput v7, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 190
    .line 191
    iget-object v4, v11, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 192
    .line 193
    move-object/from16 v18, v13

    .line 194
    .line 195
    new-instance v13, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;

    .line 196
    .line 197
    const/16 v16, 0x1

    .line 198
    .line 199
    move-object/from16 v17, v0

    .line 200
    .line 201
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v9, v8, v13, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 209
    .line 210
    if-ne v0, v4, :cond_6

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    move-object v0, v5

    .line 214
    :goto_3
    if-ne v0, v3, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    move-object v4, v12

    .line 218
    :goto_4
    move v6, v2

    .line 219
    move-object v2, v11

    .line 220
    const/4 v0, 0x3

    .line 221
    goto :goto_6

    .line 222
    :cond_8
    iput-object v11, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$0:Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 223
    .line 224
    iput-object v12, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$3:Ljava/util/Iterator;

    .line 225
    .line 226
    iput-object v10, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->L$5:Lorg/wikipedia/categories/db/Category;

    .line 227
    .line 228
    iput v2, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$0:I

    .line 229
    .line 230
    iput v4, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->I$1:I

    .line 231
    .line 232
    const/4 v0, 0x3

    .line 233
    iput v0, v1, Lorg/wikipedia/categories/db/CategoryDao$upsertAll$1;->label:I

    .line 234
    .line 235
    iget-object v4, v11, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 236
    .line 237
    new-instance v13, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 238
    .line 239
    const/16 v14, 0xa

    .line 240
    .line 241
    invoke-direct {v13, v14, v11, v6}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v4, v9, v8, v13, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-ne v4, v3, :cond_9

    .line 249
    .line 250
    :goto_5
    return-object v3

    .line 251
    :cond_9
    move v6, v2

    .line 252
    move-object v2, v11

    .line 253
    move-object v4, v12

    .line 254
    :goto_6
    move/from16 v19, v6

    .line 255
    .line 256
    move v6, v0

    .line 257
    move-object v0, v4

    .line 258
    move/from16 v4, v19

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_a
    return-object v5
.end method

.class public final Lokio/internal/DefaultSocket;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;
.implements Lokio/Socket;
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;


# static fields
.field public static INSTANCE:Lokio/internal/DefaultSocket;


# instance fields
.field public final synthetic $r8$classId:I

.field public closeBits:Ljava/lang/Object;

.field public sink:Ljava/lang/Object;

.field public socket:Ljava/lang/Object;

.field public source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    return-void

    .line 174
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 178
    iput p6, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    iput-object p2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    iput-object p3, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    iput-object p4, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    iput-object p5, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lkotlin/reflect/jvm/internal/impl/name/Name;Lcom/google/gson/GsonBuilder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    iput-object p2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    iput-object p3, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 130
    iput p5, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    iput-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    iput-object p2, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    iput-object p3, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    iput-object p4, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 153
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 154
    new-instance p1, Lokio/internal/DefaultSocket$SocketSource;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSource;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 155
    new-instance p1, Lokio/internal/DefaultSocket$SocketSink;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSink;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lokhttp3/FormBody$Builder;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findOverridingAncestorNode$1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 139
    iput-object p3, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 140
    iput-object p4, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 141
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->class__:Ljava/util/List;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0xa

    .line 143
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    .line 144
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 146
    move-object p4, p2

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 147
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 148
    iget p4, p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 149
    invoke-static {v0, p4}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p4

    .line 150
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_1
    iput-object p3, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 10
    .line 11
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v3, v1

    .line 51
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 52
    .line 53
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 58
    .line 59
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    .line 60
    .line 61
    invoke-static {v4, v3}, Landroidx/room/Room;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iput-object v2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 74
    .line 75
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 80
    .line 81
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 84
    .line 85
    new-instance v1, Landroidx/datastore/core/SimpleActor$1;

    .line 86
    .line 87
    const/16 v2, 0x12

    .line 88
    .line 89
    invoke-direct {v1, v2, p0, p1}, Landroidx/datastore/core/SimpleActor$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 97
    .line 98
    iget-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 101
    .line 102
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 107
    .line 108
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 111
    .line 112
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 113
    .line 114
    const/16 v1, 0xe

    .line 115
    .line 116
    invoke-direct {v0, v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 123
    .line 124
    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 128
    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/captcha/HCaptchaHelper$Callback;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 133
    iput-object p2, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 134
    new-instance p1, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    const/4 p2, 0x1

    .line 135
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;-><init>(Lokio/internal/DefaultSocket;Z)V

    .line 136
    iput-object p1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/diff/DiffLineView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/16 p1, 0x12

    iput p1, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 158
    iput-object p3, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 159
    iput-object p5, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 160
    iput-object p6, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/login/LoginClient;Lokio/Path$Companion;Z)V
    .locals 2

    const/4 p1, 0x6

    iput p1, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 163
    iput-object p1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    check-cast p1, Lorg/maplibre/geojson/Feature;

    const/4 p2, 0x0

    .line 165
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 166
    invoke-static {v0, v1, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object p1

    .line 167
    const-string v0, "mapbox-property-gps-bearing"

    invoke-virtual {p1, v0, p2}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 168
    const-string v0, "mapbox-property-compass-bearing"

    invoke-virtual {p1, v0, p2}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 169
    const-string p2, "mapbox-property-location-stale"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/maplibre/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    :goto_0
    iput-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lokio/internal/DefaultSocket;
    .locals 7

    .line 1
    const v0, 0x7f0c05c5

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const p1, 0x7f090215

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const p1, 0x7f0905c2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v4, v0

    .line 29
    check-cast v4, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const p1, 0x7f0905c5

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    new-instance v1, Lokio/internal/DefaultSocket;

    .line 46
    .line 47
    move-object v2, p0

    .line 48
    check-cast v2, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    const/16 v6, 0x16

    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "Missing required view with ID: "

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method


# virtual methods
.method public addLayers(Lokhttp3/MultipartBody$Builder;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    const-string v1, "mapbox-location-bearing-layer"

    .line 6
    .line 7
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lorg/maplibre/android/maps/Style;

    .line 14
    .line 15
    iget-object v4, p1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3, v2, v4}, Lorg/maplibre/android/maps/Style;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v2, p1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v3, v2}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string p1, "mapbox-location-foreground-layer"

    .line 46
    .line 47
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lorg/maplibre/android/maps/Style;

    .line 54
    .line 55
    invoke-virtual {v3, v2, v1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    const-string v1, "mapbox-location-background-layer"

    .line 66
    .line 67
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Lorg/maplibre/android/maps/Style;

    .line 74
    .line 75
    invoke-virtual {v3, v2, p1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    const-string p1, "mapbox-location-shadow-layer"

    .line 86
    .line 87
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Lorg/maplibre/android/maps/Style;

    .line 94
    .line 95
    invoke-virtual {v2, p1, v1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance p1, Lorg/maplibre/android/style/layers/CircleLayer;

    .line 106
    .line 107
    const-string v2, "mapbox-location-accuracy-layer"

    .line 108
    .line 109
    const-string v3, "mapbox-location-source"

    .line 110
    .line 111
    invoke-direct {p1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v4, "mapbox-property-accuracy-radius"

    .line 115
    .line 116
    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    new-instance v5, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 121
    .line 122
    const-string v6, "circle-radius"

    .line 123
    .line 124
    invoke-direct {v5, v6, v4}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const-string v4, "mapbox-property-accuracy-color"

    .line 128
    .line 129
    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    new-instance v7, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 134
    .line 135
    const-string v8, "circle-color"

    .line 136
    .line 137
    invoke-direct {v7, v8, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const-string v6, "mapbox-property-accuracy-alpha"

    .line 141
    .line 142
    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    new-instance v8, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 147
    .line 148
    const-string v9, "circle-opacity"

    .line 149
    .line 150
    invoke-direct {v8, v9, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    new-instance v6, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 158
    .line 159
    const-string v9, "circle-stroke-color"

    .line 160
    .line 161
    invoke-direct {v6, v9, v4}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 165
    .line 166
    const-string v9, "circle-pitch-alignment"

    .line 167
    .line 168
    const-string v10, "map"

    .line 169
    .line 170
    invoke-direct {v4, v9, v10}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 v11, 0x5

    .line 174
    new-array v11, v11, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 175
    .line 176
    const/4 v12, 0x0

    .line 177
    aput-object v5, v11, v12

    .line 178
    .line 179
    const/4 v5, 0x1

    .line 180
    aput-object v7, v11, v5

    .line 181
    .line 182
    const/4 v7, 0x2

    .line 183
    aput-object v8, v11, v7

    .line 184
    .line 185
    const/4 v7, 0x3

    .line 186
    aput-object v6, v11, v7

    .line 187
    .line 188
    const/4 v6, 0x4

    .line 189
    aput-object v4, v11, v6

    .line 190
    .line 191
    invoke-virtual {p1, v11}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 192
    .line 193
    .line 194
    iget-object v4, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v4, Lorg/maplibre/android/maps/Style;

    .line 197
    .line 198
    invoke-virtual {v4, p1, v1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    new-instance p1, Lorg/maplibre/android/style/layers/CircleLayer;

    .line 209
    .line 210
    const-string v1, "mapbox-location-pulsing-circle-layer"

    .line 211
    .line 212
    invoke-direct {p1, v1, v3}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 216
    .line 217
    invoke-direct {v1, v9, v10}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-array v3, v5, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 221
    .line 222
    aput-object v1, v3, v12

    .line 223
    .line 224
    invoke-virtual {p1, v3}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 225
    .line 226
    .line 227
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p0, Lorg/maplibre/android/maps/Style;

    .line 230
    .line 231
    invoke-virtual {p0, p1, v2}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public adjustPulsingCircleLayerVisibility(Z)V
    .locals 1

    .line 1
    const-string v0, "mapbox-location-pulsing-circle-layer"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public build()Lokhttp3/FormBody$Builder;
    .locals 10

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lokhttp3/tls/HeldCertificate;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v1, Lokhttp3/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    .line 29
    .line 30
    const-string/jumbo v0, "unable to support unencodable private key"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    iget-object v2, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 45
    .line 46
    :cond_2
    array-length v4, v2

    .line 47
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 52
    .line 53
    sget-object v4, Lokhttp3/tls/internal/TlsUtil;->password:[C

    .line 54
    .line 55
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-virtual {v5, v6, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    array-length v8, v2

    .line 71
    add-int/2addr v8, v7

    .line 72
    new-array v8, v8, [Ljava/security/cert/Certificate;

    .line 73
    .line 74
    iget-object v9, v1, Lokhttp3/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    .line 75
    .line 76
    aput-object v9, v8, v3

    .line 77
    .line 78
    const/16 v9, 0xc

    .line 79
    .line 80
    invoke-static {v2, v8, v3, v3, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Lokhttp3/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "private"

    .line 90
    .line 91
    invoke-virtual {v5, v2, v1, v4, v8}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v5}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "BC"

    .line 103
    .line 104
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    const-string v1, "PKIX"

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_1
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v5, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    array-length v2, v1

    .line 132
    if-ne v2, v7, :cond_8

    .line 133
    .line 134
    aget-object v2, v1, v3

    .line 135
    .line 136
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    .line 137
    .line 138
    if-eqz v4, :cond_8

    .line 139
    .line 140
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .line 141
    .line 142
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v4, Lokhttp3/tls/internal/TlsUtil;->password:[C

    .line 155
    .line 156
    invoke-virtual {v1, v6, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    move v5, v3

    .line 164
    :goto_2
    if-ge v5, v4, :cond_5

    .line 165
    .line 166
    const-string v8, "cert_"

    .line 167
    .line 168
    invoke-static {v5, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Ljava/security/cert/Certificate;

    .line 177
    .line 178
    invoke-virtual {v1, v8, v9}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    array-length v1, p0

    .line 203
    if-ne v1, v7, :cond_7

    .line 204
    .line 205
    aget-object v1, p0, v3

    .line 206
    .line 207
    instance-of v4, v1, Ljavax/net/ssl/X509TrustManager;

    .line 208
    .line 209
    if-eqz v4, :cond_7

    .line 210
    .line 211
    move-object v6, v1

    .line 212
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-eqz p0, :cond_6

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    sget-object p0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 222
    .line 223
    new-instance p0, Lokhttp3/tls/internal/InsecureAndroidTrustManager;

    .line 224
    .line 225
    invoke-direct {p0, v6, v0}, Lokhttp3/tls/internal/InsecureAndroidTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    move-object v6, p0

    .line 229
    goto :goto_3

    .line 230
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    const-string v0, "Unexpected trust managers: "

    .line 238
    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    new-instance p0, Lokhttp3/FormBody$Builder;

    .line 247
    .line 248
    const/16 v0, 0x16

    .line 249
    .line 250
    invoke-direct {p0, v0, v2, v6, v3}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :cond_8
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const-string v0, "Unexpected key managers:"

    .line 262
    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    return-object v6
.end method

.method public cameraBearingUpdated(D)V
    .locals 1

    .line 1
    double-to-float p1, p1

    .line 2
    iget-object p2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast p2, Lorg/maplibre/geojson/Feature;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "mapbox-property-gps-bearing"

    .line 11
    .line 12
    invoke-virtual {p2, v0, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public cameraTiltUpdated(D)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/JsonArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 12
    .line 13
    .line 14
    const-wide v2, -0x4056666666666666L    # -0.05

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-double/2addr v2, p1

    .line 20
    double-to-float v2, v2

    .line 21
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lorg/maplibre/geojson/Feature;

    .line 31
    .line 32
    const-string v3, "mapbox-property-foreground-icon-offset"

    .line 33
    .line 34
    invoke-virtual {v2, v3, v0}, Lorg/maplibre/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/google/gson/JsonArray;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 43
    .line 44
    .line 45
    const-wide v1, 0x3fa999999999999aL    # 0.05

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double/2addr p1, v1

    .line 51
    double-to-float p1, p1

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lorg/maplibre/geojson/Feature;

    .line 62
    .line 63
    const-string p2, "mapbox-property-shadow-icon-offset"

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lorg/maplibre/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public cleanup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v2, v0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/hcaptcha/sdk/IHCaptchaVerifier;->reset$1()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 70
    .line 71
    :cond_2
    iput-object v1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 72
    .line 73
    return-void
.end method

.method public findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    .line 19
    .line 20
    iget-object v2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lokhttp3/FormBody$Builder;

    .line 23
    .line 24
    iget-object v3, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    .line 27
    .line 28
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findOverridingAncestorNode$1;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findOverridingAncestorNode$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 37
    .line 38
    invoke-direct {v1, v2, v0, v3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method public getSink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/internal/DefaultSocket$SocketSink;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/internal/DefaultSocket$SocketSource;

    .line 4
    .line 5
    return-object p0
.end method

.method public hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v2}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public isRecursion(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lokio/internal/DefaultSocket;->isRecursion(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, v0

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 5
    .line 6
    iget-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_GAME_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, p0, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 9
    .line 10
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 22
    .line 23
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_GAME_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRemoveRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/widget/ImageView;

    .line 21
    .line 22
    const v1, 0x7f08012a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->callback()Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->onPageBookmarkChanged(Lorg/wikipedia/dataclient/page/PageSummary;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onShareRequest()V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;Lorg/wikipedia/views/TextInputDialog;)V
    .locals 6

    .line 1
    iget-object v0, p2, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokio/internal/DefaultSocket;

    .line 4
    .line 5
    iget-object v1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/views/TextInputDialog;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lokio/internal/DefaultSocket;

    .line 12
    .line 13
    iget-object v2, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/widget/RadioButton;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v3}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled$1(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v5, 0x0

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    iget-object p0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v5}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled$1(Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 96
    .line 97
    iget-object v2, v2, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    iget-object p0, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroid/widget/RadioButton;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    iget-object p0, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 121
    .line 122
    const p1, 0x7f120963

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iget-object p1, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v5}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled$1(Z)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    :goto_0
    iget-object p0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v3}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled$1(Z)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public refreshSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/maplibre/android/maps/Style;

    .line 4
    .line 5
    iget-boolean v1, v0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->getSourceAs()Lorg/maplibre/android/style/sources/Source;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 21
    .line 22
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lorg/maplibre/geojson/Feature;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public setGpsBearing(Ljava/lang/Float;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 7
    .line 8
    const-string v1, "mapbox-property-gps-bearing"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setLayerVisibility(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/Style;

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    const-string p1, "none"

    .line 17
    .line 18
    const-string/jumbo v0, "visible"

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, p1

    .line 26
    :goto_0
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetVisibility()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    move-object p1, v0

    .line 44
    :cond_2
    new-instance p2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 45
    .line 46
    const-string/jumbo v0, "visibility"

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0, p1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    new-array p1, p1, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aput-object p2, p1, v0

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 8
    .line 9
    if-nez v1, :cond_5

    .line 10
    .line 11
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->androidv1:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hCaptcha:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v2, Lcom/hcaptcha/sdk/HCaptcha;

    .line 29
    .line 30
    new-instance v3, Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/hcaptcha/sdk/HCaptchaInternalConfig;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v4, Lcom/hcaptcha/sdk/HCaptchaInternalConfig;->htmlProvider:Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 41
    .line 42
    invoke-direct {v2, v0, v4}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->builder()Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 52
    .line 53
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v4, v4, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 58
    .line 59
    invoke-virtual {v4}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    sget-object v4, Lcom/hcaptcha/sdk/HCaptchaTheme;->DARK:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object v4, Lcom/hcaptcha/sdk/HCaptchaTheme;->LIGHT:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 69
    .line 70
    :goto_0
    iput-object v4, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->theme$value:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    iput-boolean v4, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->theme$set:Z

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->siteKey:Ljava/lang/String;

    .line 78
    .line 79
    :cond_3
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->siteKey:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->baseURL:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v3, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->host(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->jsSrc:Ljava/lang/String;

    .line 100
    .line 101
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->jsSrc$value:Ljava/lang/String;

    .line 102
    .line 103
    iput-boolean v4, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->jsSrc$set:Z

    .line 104
    .line 105
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->endpoint:Ljava/lang/String;

    .line 106
    .line 107
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->endpoint:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->assetHost:Ljava/lang/String;

    .line 110
    .line 111
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->assethost:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->imgHost:Ljava/lang/String;

    .line 114
    .line 115
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->imghost:Ljava/lang/String;

    .line 116
    .line 117
    iget-object p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->reportApi:Ljava/lang/String;

    .line 118
    .line 119
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->reportapi:Ljava/lang/String;

    .line 120
    .line 121
    iget-boolean p1, v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->sentry:Z

    .line 122
    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->sentry$value:Ljava/lang/Boolean;

    .line 128
    .line 129
    iput-boolean v4, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->sentry$set:Z

    .line 130
    .line 131
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 132
    .line 133
    iput-object p1, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$value:Ljava/lang/Boolean;

    .line 134
    .line 135
    iput-boolean v4, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$set:Z

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->build()Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v2, p1}, Lcom/hcaptcha/sdk/HCaptcha;->setup(Lcom/hcaptcha/sdk/HCaptchaConfig;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    new-instance v1, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda0;-><init>(Lokio/internal/DefaultSocket;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda1;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda1;-><init>(Lokio/internal/DefaultSocket;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 178
    .line 179
    .line 180
    new-instance v1, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda2;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda2;-><init>(Lokio/internal/DefaultSocket;)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    const-string p0, "siteKey is marked non-null but is null"

    .line 197
    .line 198
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_5
    :goto_1
    iget-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 205
    .line 206
    if-eqz p1, :cond_9

    .line 207
    .line 208
    iget-object v1, p1, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lorg/wikipedia/activity/BaseActivity;

    .line 211
    .line 212
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v2, Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 215
    .line 216
    if-nez v2, :cond_7

    .line 217
    .line 218
    :try_start_0
    invoke-static {v1}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getApplicationInfo(Lorg/wikipedia/activity/BaseActivity;)Landroid/content/pm/ApplicationInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 223
    .line 224
    const-string v3, "com.hcaptcha.sdk.site-key"

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    if-eqz v2, :cond_6

    .line 231
    .line 232
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->builder()Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iput-object v2, v3, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->siteKey:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->build()Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p1, v2}, Lcom/hcaptcha/sdk/HCaptcha;->setup(Lcom/hcaptcha/sdk/HCaptchaConfig;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_6
    const-string p0, "The site-key is missing. You can pass it by adding com.hcaptcha.sdk.site-key as meta-data to AndroidManifest.xml or as an argument for setup/verifyWithHCaptcha methods."

    .line 247
    .line 248
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :catch_0
    move-exception p0

    .line 253
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 254
    .line 255
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :cond_7
    :goto_2
    const-string v2, ""

    .line 260
    .line 261
    const-string v3, "HCaptcha.startVerification"

    .line 262
    .line 263
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v2, Landroid/os/Handler;

    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v2, p1, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v2, Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 277
    .line 278
    if-nez v2, :cond_8

    .line 279
    .line 280
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 281
    .line 282
    sget-object v2, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 283
    .line 284
    invoke-direct {v1, v2, v3}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iput-object v1, p1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_8
    invoke-interface {v2, v1}, Lcom/hcaptcha/sdk/IHCaptchaVerifier;->startVerification(Lorg/wikipedia/activity/BaseActivity;)V

    .line 294
    .line 295
    .line 296
    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    new-instance v1, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 305
    .line 306
    const/4 v2, 0x0

    .line 307
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;-><init>(Lokio/internal/DefaultSocket;Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iget-object p0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 324
    .line 325
    const-wide/16 v0, 0x2710

    .line 326
    .line 327
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lokio/internal/DefaultSocket;->$r8$classId:I

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
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public visit(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 8
    .line 9
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->createConstantValue(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Unsupported annotation argument: "

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 9
    .line 10
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/google/gson/GsonBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcoil3/ImageLoader$Builder;

    .line 17
    .line 18
    invoke-direct {v1, p1, p0, v0}, Lcoil3/ImageLoader$Builder;-><init>(Lcom/google/gson/GsonBuilder;Lokio/internal/DefaultSocket;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    .line 6
    .line 7
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public visitEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/gson/GsonBuilder;

    .line 4
    .line 5
    iget-object v1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 8
    .line 9
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcoil3/util/UtilsKt;->getAnnotationParameterByName(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->compact(Ljava/util/ArrayList;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;

    .line 39
    .line 40
    invoke-direct {v3, p0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 50
    .line 51
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string/jumbo v2, "value"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Ljava/util/List;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    .line 120
    .line 121
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 124
    .line 125
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

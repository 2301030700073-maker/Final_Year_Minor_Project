.class public final Landroidx/glance/ImageKt$Image$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/glance/ImageKt$Image$2$1;

.field public static final INSTANCE$1:Landroidx/glance/ImageKt$Image$2$1;

.field public static final INSTANCE$2:Landroidx/glance/ImageKt$Image$2$1;

.field public static final INSTANCE$3:Landroidx/glance/ImageKt$Image$2$1;

.field public static final INSTANCE$4:Landroidx/glance/ImageKt$Image$2$1;

.field public static final INSTANCE$5:Landroidx/glance/ImageKt$Image$2$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$1:Landroidx/glance/ImageKt$Image$2$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE:Landroidx/glance/ImageKt$Image$2$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$2:Landroidx/glance/ImageKt$Image$2$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$3:Landroidx/glance/ImageKt$Image$2$1;

    .line 33
    .line 34
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$4:Landroidx/glance/ImageKt$Image$2$1;

    .line 41
    .line 42
    new-instance v0, Landroidx/glance/ImageKt$Image$2$1;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v0, v1, v2}, Landroidx/glance/ImageKt$Image$2$1;-><init>(II)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$5:Landroidx/glance/ImageKt$Image$2$1;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/ImageKt$Image$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/glance/ImageKt$Image$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Landroidx/glance/GlanceModifier$Element;

    .line 9
    .line 10
    instance-of p0, p2, Landroidx/glance/semantics/SemanticsModifier;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    move-object p1, p2

    .line 15
    :cond_0
    return-object p1

    .line 16
    :pswitch_0
    check-cast p1, Landroidx/glance/EmittableImage;

    .line 17
    .line 18
    check-cast p2, Landroidx/glance/ColorFilter;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p0, p2, Landroidx/glance/ColorFilter;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    iput-object p0, p1, Landroidx/glance/EmittableImage;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1
    check-cast p1, Landroidx/glance/EmittableImage;

    .line 30
    .line 31
    check-cast p2, Landroidx/glance/layout/ContentScale;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    iput p0, p1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_2
    check-cast p1, Landroidx/glance/EmittableImage;

    .line 41
    .line 42
    check-cast p2, Landroidx/glance/GlanceModifier;

    .line 43
    .line 44
    iput-object p2, p1, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    check-cast p2, Landroidx/glance/GlanceModifier$Element;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, ", "

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_1
    return-object p0

    .line 80
    :pswitch_4
    check-cast p1, Landroidx/glance/EmittableImage;

    .line 81
    .line 82
    check-cast p2, Landroidx/glance/AndroidResourceImageProvider;

    .line 83
    .line 84
    iput-object p2, p1, Landroidx/glance/EmittableImage;->provider:Landroidx/glance/AndroidResourceImageProvider;

    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

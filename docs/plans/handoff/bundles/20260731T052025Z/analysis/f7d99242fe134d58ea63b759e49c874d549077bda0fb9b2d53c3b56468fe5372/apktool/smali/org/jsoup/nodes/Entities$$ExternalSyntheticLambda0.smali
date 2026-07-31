.class public final synthetic Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x2000

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/nodes/NodeIterator;

    .line 12
    .line 13
    new-instance v0, Lorg/jsoup/nodes/Element;

    .line 14
    .line 15
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 16
    .line 17
    sget-object v2, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 18
    .line 19
    const-string v3, "html"

    .line 20
    .line 21
    invoke-static {v3, v1, v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 29
    .line 30
    .line 31
    const-class v1, Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_0
    new-instance p0, Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_1
    new-instance p0, Lorg/jsoup/select/Elements;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_2
    const/16 p0, 0x800

    .line 50
    .line 51
    new-array p0, p0, [C

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    const/16 p0, 0x200

    .line 55
    .line 56
    new-array p0, p0, [Ljava/lang/String;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const/16 v0, 0x400

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_5
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_6
    new-instance p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 79
    .line 80
    const/16 v0, 0x100

    .line 81
    .line 82
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_7
    sget p0, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 87
    .line 88
    new-array p0, v2, [C

    .line 89
    .line 90
    new-array v2, v3, [Ljava/lang/Object;

    .line 91
    .line 92
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    aput-object v3, v2, v1

    .line 95
    .line 96
    aput-object p0, v2, v0

    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_8
    sget p0, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 100
    .line 101
    new-array p0, v2, [B

    .line 102
    .line 103
    new-array v2, v3, [Ljava/lang/Object;

    .line 104
    .line 105
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    aput-object v3, v2, v1

    .line 108
    .line 109
    aput-object p0, v2, v0

    .line 110
    .line 111
    return-object v2

    .line 112
    :pswitch_9
    new-array p0, v3, [C

    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

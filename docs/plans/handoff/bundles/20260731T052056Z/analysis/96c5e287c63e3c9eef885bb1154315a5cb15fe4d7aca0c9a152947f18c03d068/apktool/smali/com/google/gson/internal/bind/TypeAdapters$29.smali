.class public final Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->$r8$classId:I

    .line 2
    .line 3
    const-class v0, Ljava/util/Date;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 10
    .line 11
    const-class p2, Ljava/sql/Timestamp;

    .line 12
    .line 13
    if-ne p0, p2, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/google/gson/reflect/TypeToken;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v1

    .line 30
    :pswitch_0
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 31
    .line 32
    const-class p1, Ljava/sql/Time;

    .line 33
    .line 34
    if-ne p0, p1, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-direct {v1, p0}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;-><init>(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v1

    .line 43
    :pswitch_1
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 44
    .line 45
    const-class p1, Ljava/sql/Date;

    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    invoke-direct {v1, p0}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;-><init>(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-object v1

    .line 56
    :pswitch_2
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p0, v0, :cond_3

    .line 59
    .line 60
    new-instance v1, Lcom/google/gson/internal/bind/DateTypeAdapter;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/google/gson/internal/bind/DateTypeAdapter;-><init>()V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-object v1

    .line 66
    :pswitch_3
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 67
    .line 68
    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    .line 69
    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    instance-of v0, p0, Ljava/lang/Class;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    move-object v0, p0

    .line 77
    check-cast v0, Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    if-eqz p2, :cond_5

    .line 87
    .line 88
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_0

    .line 95
    :cond_5
    check-cast p0, Ljava/lang/Class;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :goto_0
    new-instance p2, Lcom/google/gson/reflect/TypeToken;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    new-instance v1, Lcom/google/gson/internal/bind/ArrayTypeAdapter;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {v1, p1, p2, p0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_1
    return-object v1

    .line 120
    :pswitch_4
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 121
    .line 122
    const-class p1, Ljava/lang/Enum;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_9

    .line 129
    .line 130
    if-ne p0, p1, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :cond_8
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    :cond_9
    :goto_2
    return-object v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

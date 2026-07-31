.class public final enum Lorg/minidns/record/Record$CLASS;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/record/Record$CLASS;

.field public static final enum ANY:Lorg/minidns/record/Record$CLASS;

.field public static final enum IN:Lorg/minidns/record/Record$CLASS;

.field public static final INVERSE_LUT:Ljava/util/HashMap;

.field public static final enum NONE:Lorg/minidns/record/Record$CLASS;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/minidns/record/Record$CLASS;

    .line 2
    .line 3
    const-string v1, "IN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/minidns/record/Record$CLASS;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    .line 11
    .line 12
    new-instance v1, Lorg/minidns/record/Record$CLASS;

    .line 13
    .line 14
    const-string v4, "CH"

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lorg/minidns/record/Record$CLASS;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lorg/minidns/record/Record$CLASS;

    .line 21
    .line 22
    const-string v6, "HS"

    .line 23
    .line 24
    const/4 v7, 0x2

    .line 25
    const/4 v8, 0x4

    .line 26
    invoke-direct {v4, v6, v7, v8}, Lorg/minidns/record/Record$CLASS;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lorg/minidns/record/Record$CLASS;

    .line 30
    .line 31
    const-string v9, "NONE"

    .line 32
    .line 33
    const/16 v10, 0xfe

    .line 34
    .line 35
    invoke-direct {v6, v9, v5, v10}, Lorg/minidns/record/Record$CLASS;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v6, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    .line 39
    .line 40
    new-instance v9, Lorg/minidns/record/Record$CLASS;

    .line 41
    .line 42
    const-string v10, "ANY"

    .line 43
    .line 44
    const/16 v11, 0xff

    .line 45
    .line 46
    invoke-direct {v9, v10, v8, v11}, Lorg/minidns/record/Record$CLASS;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v9, Lorg/minidns/record/Record$CLASS;->ANY:Lorg/minidns/record/Record$CLASS;

    .line 50
    .line 51
    const/4 v10, 0x5

    .line 52
    new-array v10, v10, [Lorg/minidns/record/Record$CLASS;

    .line 53
    .line 54
    aput-object v0, v10, v2

    .line 55
    .line 56
    aput-object v1, v10, v3

    .line 57
    .line 58
    aput-object v4, v10, v7

    .line 59
    .line 60
    aput-object v6, v10, v5

    .line 61
    .line 62
    aput-object v9, v10, v8

    .line 63
    .line 64
    sput-object v10, Lorg/minidns/record/Record$CLASS;->$VALUES:[Lorg/minidns/record/Record$CLASS;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lorg/minidns/record/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-static {}, Lorg/minidns/record/Record$CLASS;->values()[Lorg/minidns/record/Record$CLASS;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    array-length v1, v0

    .line 78
    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    .line 80
    aget-object v3, v0, v2

    .line 81
    .line 82
    sget-object v4, Lorg/minidns/record/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    .line 83
    .line 84
    iget v5, v3, Lorg/minidns/record/Record$CLASS;->value:I

    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/minidns/record/Record$CLASS;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/Record$CLASS;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/record/Record$CLASS;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/record/Record$CLASS;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/record/Record$CLASS;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/record/Record$CLASS;->$VALUES:[Lorg/minidns/record/Record$CLASS;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/record/Record$CLASS;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/record/Record$CLASS;

    .line 8
    .line 9
    return-object v0
.end method

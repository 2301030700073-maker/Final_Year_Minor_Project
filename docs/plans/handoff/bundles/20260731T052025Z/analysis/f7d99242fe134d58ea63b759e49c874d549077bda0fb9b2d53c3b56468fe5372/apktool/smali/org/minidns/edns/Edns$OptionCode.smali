.class public final enum Lorg/minidns/edns/Edns$OptionCode;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/edns/Edns$OptionCode;

.field public static final INVERSE_LUT:Ljava/util/HashMap;

.field public static final enum NSID:Lorg/minidns/edns/Edns$OptionCode;

.field public static final enum UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;


# instance fields
.field public final asInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "UNKNOWN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lorg/minidns/edns/Edns$OptionCode;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 11
    .line 12
    new-instance v1, Lorg/minidns/edns/Edns$OptionCode;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const-string v4, "NSID"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v2}, Lorg/minidns/edns/Edns$OptionCode;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [Lorg/minidns/edns/Edns$OptionCode;

    .line 25
    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    aput-object v1, v2, v5

    .line 29
    .line 30
    sput-object v2, Lorg/minidns/edns/Edns$OptionCode;->$VALUES:[Lorg/minidns/edns/Edns$OptionCode;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-static {}, Lorg/minidns/edns/Edns$OptionCode;->values()[Lorg/minidns/edns/Edns$OptionCode;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    array-length v1, v1

    .line 39
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-static {}, Lorg/minidns/edns/Edns$OptionCode;->values()[Lorg/minidns/edns/Edns$OptionCode;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    array-length v1, v0

    .line 49
    :goto_0
    if-ge v3, v1, :cond_0

    .line 50
    .line 51
    aget-object v2, v0, v3

    .line 52
    .line 53
    sget-object v4, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/HashMap;

    .line 54
    .line 55
    iget v5, v2, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
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
    iput p3, p0, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/edns/Edns$OptionCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->$VALUES:[Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/edns/Edns$OptionCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/edns/Edns$OptionCode;

    .line 8
    .line 9
    return-object v0
.end method

.class public abstract enum Lorg/wikipedia/views/WikiErrorView$ErrorType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum EMPTY:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum GENERIC:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum LOGGED_OUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum OFFLINE:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum TIMEOUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

.field public static final enum USER_PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;


# instance fields
.field private final buttonText:I

.field private final footerText:I

.field private final icon:I

.field private final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/wikipedia/views/WikiErrorView$ErrorType$USER_PAGE_MISSING;

    .line 2
    .line 3
    const v3, 0x7f1201e9

    .line 4
    .line 5
    .line 6
    const v4, 0x7f12052a

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f08020d

    .line 11
    .line 12
    .line 13
    const-string v5, "USER_PAGE_MISSING"

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 19
    .line 20
    new-instance v1, Lorg/wikipedia/views/WikiErrorView$ErrorType$PAGE_MISSING;

    .line 21
    .line 22
    const v4, 0x7f1201e6

    .line 23
    .line 24
    .line 25
    const v5, 0x7f12052a

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const v3, 0x7f08015c

    .line 30
    .line 31
    .line 32
    const-string v6, "PAGE_MISSING"

    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/views/WikiErrorView$ErrorType$TIMEOUT;

    .line 40
    .line 41
    const v5, 0x7f1209fb

    .line 42
    .line 43
    .line 44
    const v6, 0x7f1204ad

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const v4, 0x7f08015c

    .line 49
    .line 50
    .line 51
    const-string v7, "TIMEOUT"

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/wikipedia/views/WikiErrorView$ErrorType;->TIMEOUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 57
    .line 58
    new-instance v3, Lorg/wikipedia/views/WikiErrorView$ErrorType$OFFLINE;

    .line 59
    .line 60
    const v6, 0x7f1209fa

    .line 61
    .line 62
    .line 63
    const v7, 0x7f1204ad

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const v5, 0x7f0801d2

    .line 68
    .line 69
    .line 70
    const-string v8, "OFFLINE"

    .line 71
    .line 72
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Lorg/wikipedia/views/WikiErrorView$ErrorType;->OFFLINE:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 76
    .line 77
    new-instance v4, Lorg/wikipedia/views/WikiErrorView$ErrorType$EMPTY;

    .line 78
    .line 79
    const v7, 0x7f1201e2

    .line 80
    .line 81
    .line 82
    const v8, 0x7f1201e4

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const v6, 0x7f08015c

    .line 87
    .line 88
    .line 89
    const-string v9, "EMPTY"

    .line 90
    .line 91
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v4, Lorg/wikipedia/views/WikiErrorView$ErrorType;->EMPTY:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 95
    .line 96
    new-instance v5, Lorg/wikipedia/views/WikiErrorView$ErrorType$LOGGED_OUT;

    .line 97
    .line 98
    const v8, 0x7f1201e2

    .line 99
    .line 100
    .line 101
    const v9, 0x7f1207bd

    .line 102
    .line 103
    .line 104
    const/4 v6, 0x5

    .line 105
    const v7, 0x7f08015c

    .line 106
    .line 107
    .line 108
    const-string v10, "LOGGED_OUT"

    .line 109
    .line 110
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v5, Lorg/wikipedia/views/WikiErrorView$ErrorType;->LOGGED_OUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 114
    .line 115
    new-instance v6, Lorg/wikipedia/views/WikiErrorView$ErrorType$GENERIC;

    .line 116
    .line 117
    const v9, 0x7f1201e2

    .line 118
    .line 119
    .line 120
    const v10, 0x7f1201d6

    .line 121
    .line 122
    .line 123
    const/4 v7, 0x6

    .line 124
    const v8, 0x7f08015c

    .line 125
    .line 126
    .line 127
    const-string v11, "GENERIC"

    .line 128
    .line 129
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(IIIILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v6, Lorg/wikipedia/views/WikiErrorView$ErrorType;->GENERIC:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 133
    .line 134
    const/4 v7, 0x7

    .line 135
    new-array v7, v7, [Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    aput-object v0, v7, v8

    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    aput-object v1, v7, v0

    .line 142
    .line 143
    const/4 v0, 0x2

    .line 144
    aput-object v2, v7, v0

    .line 145
    .line 146
    const/4 v0, 0x3

    .line 147
    aput-object v3, v7, v0

    .line 148
    .line 149
    const/4 v0, 0x4

    .line 150
    aput-object v4, v7, v0

    .line 151
    .line 152
    const/4 v0, 0x5

    .line 153
    aput-object v5, v7, v0

    .line 154
    .line 155
    const/4 v0, 0x6

    .line 156
    aput-object v6, v7, v0

    .line 157
    .line 158
    sput-object v7, Lorg/wikipedia/views/WikiErrorView$ErrorType;->$VALUES:[Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 159
    .line 160
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 161
    .line 162
    invoke-direct {v0, v7}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 163
    .line 164
    .line 165
    sput-object v0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 166
    .line 167
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->icon:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->text:I

    .line 7
    .line 8
    iput p4, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->buttonText:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->footerText:I

    .line 12
    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/views/WikiErrorView$ErrorType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/views/WikiErrorView$ErrorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->$VALUES:[Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract buttonClickListener(Lorg/wikipedia/views/WikiErrorView;)Landroid/view/View$OnClickListener;
.end method

.method public final getButtonText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->buttonText:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFooterText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->footerText:I

    .line 2
    .line 3
    return p0
.end method

.method public final getHasFooterText()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->footerText:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final getIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->icon:I

    .line 2
    .line 3
    return p0
.end method

.method public final getText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/WikiErrorView$ErrorType;->text:I

    .line 2
    .line 3
    return p0
.end method

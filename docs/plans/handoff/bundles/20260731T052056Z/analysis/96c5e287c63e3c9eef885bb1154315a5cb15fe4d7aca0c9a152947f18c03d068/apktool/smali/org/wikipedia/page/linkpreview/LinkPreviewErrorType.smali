.class public abstract enum Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final Companion:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;

.field public static final enum GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum USER_PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;


# instance fields
.field private final buttonText:I

.field private final icon:I

.field private final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$OFFLINE;

    .line 2
    .line 3
    const v3, 0x7f1201e2

    .line 4
    .line 5
    .line 6
    const v4, 0x7f1200a6

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f0801ac

    .line 11
    .line 12
    .line 13
    const-string v5, "OFFLINE"

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 19
    .line 20
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$PAGE_MISSING;

    .line 21
    .line 22
    const v4, 0x7f1201e6

    .line 23
    .line 24
    .line 25
    const v5, 0x7f1209e9

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
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(IIIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$USER_PAGE_MISSING;

    .line 40
    .line 41
    const v5, 0x7f1201e9

    .line 42
    .line 43
    .line 44
    const v6, 0x7f1209e9

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const v4, 0x7f08020d

    .line 49
    .line 50
    .line 51
    const-string v7, "USER_PAGE_MISSING"

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(IIIILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 57
    .line 58
    new-instance v3, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$GENERIC;

    .line 59
    .line 60
    const v6, 0x7f1201e2

    .line 61
    .line 62
    .line 63
    const v7, 0x7f1209e9

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const v5, 0x7f08015c

    .line 68
    .line 69
    .line 70
    const-string v8, "GENERIC"

    .line 71
    .line 72
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(IIIILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    new-array v4, v4, [Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    aput-object v0, v4, v5

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    aput-object v1, v4, v0

    .line 85
    .line 86
    const/4 v0, 0x2

    .line 87
    aput-object v2, v4, v0

    .line 88
    .line 89
    const/4 v0, 0x3

    .line 90
    aput-object v3, v4, v0

    .line 91
    .line 92
    sput-object v4, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->$VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 93
    .line 94
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 95
    .line 96
    invoke-direct {v0, v4}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 100
    .line 101
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->Companion:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;

    .line 107
    .line 108
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->icon:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->text:I

    .line 7
    .line 8
    iput p4, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonText:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->$VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract buttonAction(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
.end method

.method public final getButtonText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonText:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->icon:I

    .line 2
    .line 3
    return p0
.end method

.method public final getText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->text:I

    .line 2
    .line 3
    return p0
.end method

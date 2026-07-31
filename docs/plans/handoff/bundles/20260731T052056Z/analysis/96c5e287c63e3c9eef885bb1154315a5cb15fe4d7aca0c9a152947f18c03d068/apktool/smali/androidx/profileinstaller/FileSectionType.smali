.class public final enum Landroidx/profileinstaller/FileSectionType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Landroidx/profileinstaller/FileSectionType;

.field public static final enum AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

.field public static final enum CLASSES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum DEX_FILES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

.field public static final enum METHODS:Landroidx/profileinstaller/FileSectionType;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "DEX_FILES"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->DEX_FILES:Landroidx/profileinstaller/FileSectionType;

    .line 12
    .line 13
    new-instance v1, Landroidx/profileinstaller/FileSectionType;

    .line 14
    .line 15
    const-wide/16 v4, 0x1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v6, "EXTRA_DESCRIPTORS"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v5, v6}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Landroidx/profileinstaller/FileSectionType;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

    .line 24
    .line 25
    new-instance v4, Landroidx/profileinstaller/FileSectionType;

    .line 26
    .line 27
    const-wide/16 v5, 0x2

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    const-string v8, "CLASSES"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6, v8}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Landroidx/profileinstaller/FileSectionType;->CLASSES:Landroidx/profileinstaller/FileSectionType;

    .line 36
    .line 37
    new-instance v5, Landroidx/profileinstaller/FileSectionType;

    .line 38
    .line 39
    const-wide/16 v8, 0x3

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    const-string v10, "METHODS"

    .line 43
    .line 44
    invoke-direct {v5, v6, v8, v9, v10}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Landroidx/profileinstaller/FileSectionType;->METHODS:Landroidx/profileinstaller/FileSectionType;

    .line 48
    .line 49
    new-instance v8, Landroidx/profileinstaller/FileSectionType;

    .line 50
    .line 51
    const-wide/16 v9, 0x4

    .line 52
    .line 53
    const/4 v11, 0x4

    .line 54
    const-string v12, "AGGREGATION_COUNT"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10, v12}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Landroidx/profileinstaller/FileSectionType;->AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

    .line 60
    .line 61
    const/4 v9, 0x5

    .line 62
    new-array v9, v9, [Landroidx/profileinstaller/FileSectionType;

    .line 63
    .line 64
    aput-object v0, v9, v3

    .line 65
    .line 66
    aput-object v1, v9, v2

    .line 67
    .line 68
    aput-object v4, v9, v7

    .line 69
    .line 70
    aput-object v5, v9, v6

    .line 71
    .line 72
    aput-object v8, v9, v11

    .line 73
    .line 74
    sput-object v9, Landroidx/profileinstaller/FileSectionType;->$VALUES:[Landroidx/profileinstaller/FileSectionType;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    const-class v0, Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/profileinstaller/FileSectionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/profileinstaller/FileSectionType;->$VALUES:[Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/profileinstaller/FileSectionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/profileinstaller/FileSectionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    .line 2
    .line 3
    return-wide v0
.end method

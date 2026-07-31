.class public final Landroidx/profileinstaller/DexProfileData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final apkName:Ljava/lang/String;

.field public classSetSize:I

.field public classes:[I

.field public final dexChecksum:J

.field public final dexName:Ljava/lang/String;

.field public final hotMethodRegionSize:I

.field public mTypeIdCount:J

.field public final methods:Ljava/util/TreeMap;

.field public final numMethodIds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/profileinstaller/DexProfileData;->apkName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/profileinstaller/DexProfileData;->dexName:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/profileinstaller/DexProfileData;->dexChecksum:J

    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/profileinstaller/DexProfileData;->mTypeIdCount:J

    .line 13
    .line 14
    iput p5, p0, Landroidx/profileinstaller/DexProfileData;->classSetSize:I

    .line 15
    .line 16
    iput p6, p0, Landroidx/profileinstaller/DexProfileData;->hotMethodRegionSize:I

    .line 17
    .line 18
    iput p7, p0, Landroidx/profileinstaller/DexProfileData;->numMethodIds:I

    .line 19
    .line 20
    iput-object p8, p0, Landroidx/profileinstaller/DexProfileData;->classes:[I

    .line 21
    .line 22
    iput-object p9, p0, Landroidx/profileinstaller/DexProfileData;->methods:Ljava/util/TreeMap;

    .line 23
    .line 24
    return-void
.end method

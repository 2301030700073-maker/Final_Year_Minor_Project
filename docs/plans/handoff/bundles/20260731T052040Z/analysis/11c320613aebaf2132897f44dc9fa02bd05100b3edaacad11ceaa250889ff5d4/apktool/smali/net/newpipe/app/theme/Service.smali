.class public final enum Lnet/newpipe/app/theme/Service;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/newpipe/app/theme/Service;

.field public static final enum YOUTUBE:Lnet/newpipe/app/theme/Service;


# instance fields
.field private final darkScheme:Landroidx/compose/material3/ColorScheme;

.field private final isSchemeColorDensityLight:Z

.field private final lightScheme:Landroidx/compose/material3/ColorScheme;

.field private final serviceId:I

.field private final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lnet/newpipe/app/theme/Service;

    .line 2
    .line 3
    sget-object v5, Lnet/newpipe/app/theme/ServiceThemeKt;->youTubeLightScheme:Landroidx/compose/material3/ColorScheme;

    .line 4
    .line 5
    sget-object v6, Lnet/newpipe/app/theme/ServiceThemeKt;->youTubeDarkScheme:Landroidx/compose/material3/ColorScheme;

    .line 6
    .line 7
    const-string v1, "YOUTUBE"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "YouTube"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lnet/newpipe/app/theme/Service;-><init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lnet/newpipe/app/theme/Service;->YOUTUBE:Lnet/newpipe/app/theme/Service;

    .line 17
    .line 18
    new-instance v1, Lnet/newpipe/app/theme/Service;

    .line 19
    .line 20
    sget-object v6, Lnet/newpipe/app/theme/ServiceThemeKt;->soundCloudLightScheme:Landroidx/compose/material3/ColorScheme;

    .line 21
    .line 22
    sget-object v7, Lnet/newpipe/app/theme/ServiceThemeKt;->soundCloudDarkScheme:Landroidx/compose/material3/ColorScheme;

    .line 23
    .line 24
    const-string v2, "SOUNDCLOUD"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x1

    .line 28
    const-string v5, "SoundCloud"

    .line 29
    .line 30
    invoke-direct/range {v1 .. v7}, Lnet/newpipe/app/theme/Service;-><init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lnet/newpipe/app/theme/Service;

    .line 34
    .line 35
    sget-object v7, Lnet/newpipe/app/theme/ServiceThemeKt;->mediaCCCLightScheme:Landroidx/compose/material3/ColorScheme;

    .line 36
    .line 37
    sget-object v8, Lnet/newpipe/app/theme/ServiceThemeKt;->mediaCCCDarkScheme:Landroidx/compose/material3/ColorScheme;

    .line 38
    .line 39
    const-string v3, "MEDIA_CCC"

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v5, 0x2

    .line 43
    const-string v6, "media.ccc.de"

    .line 44
    .line 45
    invoke-direct/range {v2 .. v8}, Lnet/newpipe/app/theme/Service;-><init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lnet/newpipe/app/theme/Service;

    .line 49
    .line 50
    sget-object v8, Lnet/newpipe/app/theme/ServiceThemeKt;->peerTubeLightScheme:Landroidx/compose/material3/ColorScheme;

    .line 51
    .line 52
    sget-object v9, Lnet/newpipe/app/theme/ServiceThemeKt;->peerTubeDarkScheme:Landroidx/compose/material3/ColorScheme;

    .line 53
    .line 54
    const-string v4, "PEERTUBE"

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    const/4 v6, 0x3

    .line 58
    const-string v7, "PeerTube"

    .line 59
    .line 60
    invoke-direct/range {v3 .. v9}, Lnet/newpipe/app/theme/Service;-><init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lnet/newpipe/app/theme/Service;

    .line 64
    .line 65
    sget-object v9, Lnet/newpipe/app/theme/ServiceThemeKt;->bandCampLightScheme:Landroidx/compose/material3/ColorScheme;

    .line 66
    .line 67
    sget-object v10, Lnet/newpipe/app/theme/ServiceThemeKt;->bandCampDarkScheme:Landroidx/compose/material3/ColorScheme;

    .line 68
    .line 69
    const-string v5, "BANDCAMP"

    .line 70
    .line 71
    const/4 v6, 0x4

    .line 72
    const/4 v7, 0x4

    .line 73
    const-string v8, "Bandcamp"

    .line 74
    .line 75
    invoke-direct/range {v4 .. v10}, Lnet/newpipe/app/theme/Service;-><init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x5

    .line 79
    new-array v5, v5, [Lnet/newpipe/app/theme/Service;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    aput-object v0, v5, v6

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    aput-object v1, v5, v0

    .line 86
    .line 87
    const/4 v0, 0x2

    .line 88
    aput-object v2, v5, v0

    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    aput-object v3, v5, v0

    .line 92
    .line 93
    const/4 v0, 0x4

    .line 94
    aput-object v4, v5, v0

    .line 95
    .line 96
    sput-object v5, Lnet/newpipe/app/theme/Service;->$VALUES:[Lnet/newpipe/app/theme/Service;

    .line 97
    .line 98
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 99
    .line 100
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lnet/newpipe/app/theme/Service;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/newpipe/app/theme/Service;->serviceId:I

    .line 5
    .line 6
    iput-object p4, p0, Lnet/newpipe/app/theme/Service;->serviceName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lnet/newpipe/app/theme/Service;->lightScheme:Landroidx/compose/material3/ColorScheme;

    .line 9
    .line 10
    iput-object p6, p0, Lnet/newpipe/app/theme/Service;->darkScheme:Landroidx/compose/material3/ColorScheme;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lnet/newpipe/app/theme/Service;->isSchemeColorDensityLight:Z

    .line 14
    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/newpipe/app/theme/Service;
    .locals 1

    .line 1
    const-class v0, Lnet/newpipe/app/theme/Service;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/newpipe/app/theme/Service;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/newpipe/app/theme/Service;
    .locals 1

    .line 1
    sget-object v0, Lnet/newpipe/app/theme/Service;->$VALUES:[Lnet/newpipe/app/theme/Service;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/newpipe/app/theme/Service;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDarkScheme()Landroidx/compose/material3/ColorScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/theme/Service;->darkScheme:Landroidx/compose/material3/ColorScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLightScheme()Landroidx/compose/material3/ColorScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/theme/Service;->lightScheme:Landroidx/compose/material3/ColorScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/theme/Service;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isSchemeColorDensityLight()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/newpipe/app/theme/Service;->isSchemeColorDensityLight:Z

    .line 2
    .line 3
    return p0
.end method

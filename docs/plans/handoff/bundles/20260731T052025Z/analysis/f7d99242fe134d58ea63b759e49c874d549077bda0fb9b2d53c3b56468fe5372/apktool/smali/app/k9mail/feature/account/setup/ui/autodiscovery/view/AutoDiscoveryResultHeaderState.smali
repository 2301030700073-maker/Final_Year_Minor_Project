.class public final enum Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

.field public static final enum NoSettings:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

.field public static final enum Trusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

.field public static final enum Untrusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;


# instance fields
.field public final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final isExpandable:Z

.field public final subtitleResourceId:I

.field public final titleResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 2
    .line 3
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Info:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 4
    .line 5
    const v5, 0x7f120170

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v1, "NoSettings"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const v4, 0x7f120173

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;-><init>(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/ImageVector;IIZ)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->NoSettings:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 19
    .line 20
    new-instance v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 21
    .line 22
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Check:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 23
    .line 24
    const v9, 0x7f120171

    .line 25
    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const-string v5, "Trusted"

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const v8, 0x7f120174

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v4 .. v10}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;-><init>(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/ImageVector;IIZ)V

    .line 35
    .line 36
    .line 37
    move-object v8, v4

    .line 38
    sput-object v8, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->Trusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 39
    .line 40
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 41
    .line 42
    const v6, 0x7f120172

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    const-string v2, "Untrusted"

    .line 47
    .line 48
    move-object v4, v3

    .line 49
    const/4 v3, 0x2

    .line 50
    const v5, 0x7f120174

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v1 .. v7}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;-><init>(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/ImageVector;IIZ)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->Untrusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    new-array v2, v2, [Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aput-object v0, v2, v3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v8, v2, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v1, v2, v0

    .line 69
    .line 70
    sput-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->$VALUES:[Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/ImageVector;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 5
    .line 6
    iput p4, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->titleResourceId:I

    .line 7
    .line 8
    iput p5, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->subtitleResourceId:I

    .line 9
    .line 10
    iput-boolean p6, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->isExpandable:Z

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;
    .locals 1

    .line 1
    const-class v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->$VALUES:[Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 8
    .line 9
    return-object v0
.end method

.class public final enum Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

.field public static final enum End:Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 2
    .line 3
    const-string v1, "Start"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 10
    .line 11
    const-string v3, "Center"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 18
    .line 19
    const-string v5, "End"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;->End:Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 26
    .line 27
    new-instance v5, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 28
    .line 29
    const-string v7, "EndOverlay"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    new-array v7, v7, [Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 37
    .line 38
    aput-object v0, v7, v2

    .line 39
    .line 40
    aput-object v1, v7, v4

    .line 41
    .line 42
    aput-object v3, v7, v6

    .line 43
    .line 44
    aput-object v5, v7, v8

    .line 45
    .line 46
    sput-object v7, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;->$VALUES:[Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 47
    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;
    .locals 1

    .line 1
    const-class v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;->$VALUES:[Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 8
    .line 9
    return-object v0
.end method

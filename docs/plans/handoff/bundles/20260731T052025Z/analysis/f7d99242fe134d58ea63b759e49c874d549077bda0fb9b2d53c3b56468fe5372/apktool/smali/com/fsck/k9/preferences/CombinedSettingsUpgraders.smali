.class public abstract Lcom/fsck/k9/preferences/CombinedSettingsUpgraders;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final UPGRADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$1;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$1;

    .line 8
    .line 9
    new-instance v2, Lkotlin/Pair;

    .line 10
    .line 11
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x62

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$2;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$2;

    .line 21
    .line 22
    new-instance v3, Lkotlin/Pair;

    .line 23
    .line 24
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x63

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$3;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$3;

    .line 34
    .line 35
    new-instance v4, Lkotlin/Pair;

    .line 36
    .line 37
    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x64

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$4;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$4;

    .line 47
    .line 48
    new-instance v5, Lkotlin/Pair;

    .line 49
    .line 50
    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x68

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;

    .line 60
    .line 61
    new-instance v6, Lkotlin/Pair;

    .line 62
    .line 63
    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    new-array v0, v0, [Lkotlin/Pair;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    aput-object v2, v0, v1

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    aput-object v3, v0, v1

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    aput-object v4, v0, v1

    .line 77
    .line 78
    const/4 v1, 0x3

    .line 79
    aput-object v5, v0, v1

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    aput-object v6, v0, v1

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders;->UPGRADERS:Ljava/util/Map;

    .line 89
    .line 90
    return-void
.end method

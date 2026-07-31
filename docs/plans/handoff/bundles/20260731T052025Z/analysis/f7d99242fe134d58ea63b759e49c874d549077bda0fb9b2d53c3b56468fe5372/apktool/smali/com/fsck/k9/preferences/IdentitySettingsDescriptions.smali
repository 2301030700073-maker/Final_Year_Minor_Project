.class public abstract Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SETTINGS:Ljava/util/Map;

.field public static final UPGRADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 14
    .line 15
    const/4 v5, 0x7

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    aput-object v1, v4, v7

    .line 29
    .line 30
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v4, "signature"

    .line 35
    .line 36
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 40
    .line 41
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 50
    .line 51
    const/16 v8, 0x44

    .line 52
    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 58
    .line 59
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5, v8, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 v8, 0x2

    .line 66
    new-array v8, v8, [Lcom/google/zxing/BinaryBitmap;

    .line 67
    .line 68
    aput-object v1, v8, v7

    .line 69
    .line 70
    aput-object v4, v8, v2

    .line 71
    .line 72
    invoke-static {v8}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v4, "signatureUse"

    .line 77
    .line 78
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 82
    .line 83
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 84
    .line 85
    invoke-direct {v4, v6}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v6, Lcom/fsck/k9/EmailAddressValidator;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v6, v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-array v2, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 99
    .line 100
    aput-object v1, v2, v7

    .line 101
    .line 102
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "replyTo"

    .line 107
    .line 108
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 127
    .line 128
    return-void
.end method

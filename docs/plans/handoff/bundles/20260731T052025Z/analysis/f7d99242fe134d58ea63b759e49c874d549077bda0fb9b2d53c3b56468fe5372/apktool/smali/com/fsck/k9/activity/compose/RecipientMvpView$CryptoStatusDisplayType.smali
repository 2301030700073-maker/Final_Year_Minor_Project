.class public final enum Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum ENABLED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;


# instance fields
.field public final childIdToDisplay:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 2
    .line 3
    const-string v1, "UNCONFIGURED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 11
    .line 12
    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 13
    .line 14
    const-string v4, "UNINITIALIZED"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-direct {v1, v4, v5, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 21
    .line 22
    new-instance v4, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 23
    .line 24
    const-string v6, "SIGN_ONLY"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const v8, 0x7f09016f

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v6, v7, v8}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 34
    .line 35
    new-instance v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 36
    .line 37
    const-string v9, "UNAVAILABLE"

    .line 38
    .line 39
    const/4 v10, 0x3

    .line 40
    invoke-direct {v6, v9, v10, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 44
    .line 45
    new-instance v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 46
    .line 47
    const v9, 0x7f090170

    .line 48
    .line 49
    .line 50
    const-string v11, "ENABLED"

    .line 51
    .line 52
    const/4 v12, 0x4

    .line 53
    invoke-direct {v3, v11, v12, v9}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 57
    .line 58
    new-instance v9, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 59
    .line 60
    const-string v11, "ENABLED_ERROR"

    .line 61
    .line 62
    const/4 v13, 0x5

    .line 63
    const v14, 0x7f090171

    .line 64
    .line 65
    .line 66
    invoke-direct {v9, v11, v13, v14}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v9, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 70
    .line 71
    new-instance v11, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 72
    .line 73
    const v15, 0x7f090174

    .line 74
    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    const-string v2, "ENABLED_TRUSTED"

    .line 79
    .line 80
    move/from16 v17, v5

    .line 81
    .line 82
    const/4 v5, 0x6

    .line 83
    invoke-direct {v11, v2, v5, v15}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    .line 86
    sput-object v11, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 87
    .line 88
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 89
    .line 90
    const-string v15, "AVAILABLE"

    .line 91
    .line 92
    move/from16 v18, v5

    .line 93
    .line 94
    const/4 v5, 0x7

    .line 95
    invoke-direct {v2, v15, v5, v8}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    sput-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 99
    .line 100
    new-instance v8, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 101
    .line 102
    const-string v15, "ERROR"

    .line 103
    .line 104
    move/from16 v19, v5

    .line 105
    .line 106
    const/16 v5, 0x8

    .line 107
    .line 108
    invoke-direct {v8, v15, v5, v14}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v8, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 112
    .line 113
    const/16 v14, 0x9

    .line 114
    .line 115
    new-array v14, v14, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 116
    .line 117
    aput-object v0, v14, v16

    .line 118
    .line 119
    aput-object v1, v14, v17

    .line 120
    .line 121
    aput-object v4, v14, v7

    .line 122
    .line 123
    aput-object v6, v14, v10

    .line 124
    .line 125
    aput-object v3, v14, v12

    .line 126
    .line 127
    aput-object v9, v14, v13

    .line 128
    .line 129
    aput-object v11, v14, v18

    .line 130
    .line 131
    aput-object v2, v14, v19

    .line 132
    .line 133
    aput-object v8, v14, v5

    .line 134
    .line 135
    sput-object v14, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 136
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->childIdToDisplay:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 8
    .line 9
    return-object v0
.end method

.class public final enum Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;


# instance fields
.field public final childIdToDisplay:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "NONE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 11
    .line 12
    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 13
    .line 14
    const v2, 0x7f090167

    .line 15
    .line 16
    .line 17
    const-string v4, "PGP_INLINE"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 24
    .line 25
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 26
    .line 27
    const v4, 0x7f090169

    .line 28
    .line 29
    .line 30
    const-string v6, "SIGN_ONLY"

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    invoke-direct {v2, v6, v7, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 37
    .line 38
    new-instance v4, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 39
    .line 40
    const v6, 0x7f09016a

    .line 41
    .line 42
    .line 43
    const-string v8, "SIGN_ONLY_PGP_INLINE"

    .line 44
    .line 45
    const/4 v9, 0x3

    .line 46
    invoke-direct {v4, v8, v9, v6}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 50
    .line 51
    const/4 v6, 0x4

    .line 52
    new-array v6, v6, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 53
    .line 54
    aput-object v0, v6, v3

    .line 55
    .line 56
    aput-object v1, v6, v5

    .line 57
    .line 58
    aput-object v2, v6, v7

    .line 59
    .line 60
    aput-object v4, v6, v9

    .line 61
    .line 62
    sput-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->childIdToDisplay:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 8
    .line 9
    return-object v0
.end method

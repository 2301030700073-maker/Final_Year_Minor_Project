.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzCY:I

.field private final zzTL:Ljava/lang/String;

.field private final zzadI:Ljava/lang/String;

.field private final zzadv:Ljava/lang/String;

.field private final zzanJ:J

.field private final zzanK:I

.field private final zzanL:J

.field private final zzanM:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

.field private final zzanN:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzanO:Z

.field private final zzanP:Z

.field private final zzanf:Landroid/net/Uri;

.field private final zzang:Landroid/net/Uri;

.field private final zzanq:Ljava/lang/String;

.field private final zzanr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;

    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/games/PlayerEntity;->zzTL:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanf:Landroid/net/Uri;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanq:Ljava/lang/String;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/google/android/gms/games/PlayerEntity;->zzang:Landroid/net/Uri;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanr:Ljava/lang/String;

    move-wide/from16 v8, p6

    iput-wide v8, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanJ:J

    move/from16 v10, p8

    iput v10, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanK:I

    move-wide/from16 v11, p9

    iput-wide v11, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanL:J

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/games/PlayerEntity;->zzadv:Ljava/lang/String;

    move/from16 v14, p16

    iput-boolean v14, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanO:Z

    move-object/from16 v15, p14

    iput-object v15, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanM:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanN:Lcom/google/android/gms/games/PlayerLevelInfo;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzanP:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;Z)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzCY:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTL:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanf:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanq:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzang:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanr:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanJ:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzrK()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanK:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanL:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadv:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->isProfileVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanO:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzrL()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanM:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanN:Lcom/google/android/gms/games/PlayerLevelInfo;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzrJ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanP:Z

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTL:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzq(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzq(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanJ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzU(Z)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/games/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzrJ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzrJ()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static zzb(Lcom/google/android/gms/games/Player;)I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzrJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zzc(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "PlayerId"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "HasDebugAccess"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzrJ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "HiResImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "RetrievedTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "LevelInfo"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzd(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzcM(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzca(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzrH()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->zznE()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlc;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzang:Landroid/net/Uri;

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanr:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanf:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanq:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanL:J

    return-wide v0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanN:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTL:Ljava/lang/String;

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanJ:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadv:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadv:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlc;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzCY:I

    return v0
.end method

.method public hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProfileVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanO:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzc(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->zznF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerEntityCreator;->zza(Lcom/google/android/gms/games/PlayerEntity;Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzadI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanf:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanf:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzang:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzang:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanJ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public zzrJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanP:Z

    return v0
.end method

.method public zzrK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanK:I

    return v0
.end method

.method public zzrL()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzanM:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    return-object v0
.end method

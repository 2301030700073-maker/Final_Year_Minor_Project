.class public final Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/appcontent/AppContentSection;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final zzCY:I

.field private final zzEl:Ljava/lang/String;

.field private final zzKI:Ljava/lang/String;

.field private final zzadv:Ljava/lang/String;

.field private final zzaoE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaoF:Ljava/lang/String;

.field private final zzaom:Ljava/lang/String;

.field private final zzaov:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->CREATOR:Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaov:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoE:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoF:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaom:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzKI:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaox:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzadv:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzEl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/appcontent/AppContentSection;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzCY:I

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoF:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaom:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzKI:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaox:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzadv:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzEl:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/appcontent/AppContentAction;

    invoke-interface {v5}, Lcom/google/android/gms/games/appcontent/AppContentAction;->freeze()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoE:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoE:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/appcontent/AppContentCard;

    invoke-interface {v5}, Lcom/google/android/gms/games/appcontent/AppContentCard;->freeze()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrZ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaov:Ljava/util/ArrayList;

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaov:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    invoke-interface {v4}, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;->freeze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentSection;)I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrZ()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsj()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrP()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsb()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrZ()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrZ()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsj()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsj()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsk()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static zzb(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Actions"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Annotations"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrZ()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Cards"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsj()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "CardType"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "ContentDescription"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzrP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Extras"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Subtitle"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzsb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzsl()Lcom/google/android/gms/games/appcontent/AppContentSection;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzKI:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzadv:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzEl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentSection;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;->zza(Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaom:Ljava/lang/String;

    return-object v0
.end method

.method public zzrZ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaov:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzsb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaox:Ljava/lang/String;

    return-object v0
.end method

.method public zzsj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/AppContentCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoE:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzsk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaoF:Ljava/lang/String;

    return-object v0
.end method

.method public zzsl()Lcom/google/android/gms/games/appcontent/AppContentSection;
    .locals 0

    return-object p0
.end method

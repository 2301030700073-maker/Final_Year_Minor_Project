.class public final Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zze$zza;
    }
.end annotation


# instance fields
.field private final zzMY:Landroid/accounts/Account;

.field private final zzOd:Ljava/lang/String;

.field private final zzOe:Ljava/lang/String;

.field private final zzWv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWw:I

.field private final zzWx:Landroid/view/View;

.field private final zzZS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zze$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZU:Lcom/google/android/gms/internal/zzpt;

.field private zzZV:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Collection;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzpt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zze$zza;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    if-nez p2, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzWv:Ljava/util/Set;

    if-nez p3, :cond_1

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzZT:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zze;->zzWx:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/zze;->zzWw:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zze;->zzOe:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zze;->zzOd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zze;->zzZU:Lcom/google/android/gms/internal/zzpt;

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->zzWv:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->zzZT:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/internal/zze$zza;

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zze$zza;->zzWJ:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzZS:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzZV:Ljava/lang/Integer;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzZT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zze$zza;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/common/internal/zze$zza;->zzWJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzWv:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zze$zza;->zzWJ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzWv:Ljava/util/Set;

    return-object p1
.end method

.method public zznA()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzWx:Landroid/view/View;

    return-object v0
.end method

.method public zznB()Lcom/google/android/gms/internal/zzpt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzZU:Lcom/google/android/gms/internal/zzpt;

    return-object v0
.end method

.method public zznC()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzZV:Ljava/lang/Integer;

    return-object v0
.end method

.method public zzns()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zznt()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public zznt()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzMY:Landroid/accounts/Account;

    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public zznu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->zzWw:I

    return v0
.end method

.method public zznv()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzWv:Ljava/util/Set;

    return-object v0
.end method

.method public zznw()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzZS:Ljava/util/Set;

    return-object v0
.end method

.method public zznx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zze$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzZT:Ljava/util/Map;

    return-object v0
.end method

.method public zzny()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzOe:Ljava/lang/String;

    return-object v0
.end method

.method public zznz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzOd:Ljava/lang/String;

    return-object v0
.end method

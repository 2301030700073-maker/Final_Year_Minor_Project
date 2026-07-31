.class public final Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzayb:Z

.field private zzayc:Z

.field private zzayd:Z

.field private final zzaye:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaye:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayd:Z

    return-void
.end method


# virtual methods
.method public addAllLocationRequests(Ljava/util/Collection;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;)",
            "Lcom/google/android/gms/location/LocationSettingsRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaye:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaye:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 7

    new-instance v6, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaye:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayb:Z

    iget-boolean v3, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayc:Z

    iget-boolean v4, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayd:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V

    return-object v6
.end method

.method public setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayb:Z

    return-object p0
.end method

.method public setNeedBle(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzayc:Z

    return-object p0
.end method

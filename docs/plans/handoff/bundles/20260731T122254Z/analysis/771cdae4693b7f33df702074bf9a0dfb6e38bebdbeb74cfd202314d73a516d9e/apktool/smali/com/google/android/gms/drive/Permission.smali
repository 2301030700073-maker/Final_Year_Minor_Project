.class public Lcom/google/android/gms/drive/Permission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field private zzadA:I

.field private zzadB:Ljava/lang/String;

.field private zzadC:Ljava/lang/String;

.field private zzadD:I

.field private zzadE:Z

.field private zzadz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/Permission;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Permission;->zzadz:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    iput-object p4, p0, Lcom/google/android/gms/drive/Permission;->zzadB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/Permission;->zzadC:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/Permission;->zzadD:I

    iput-boolean p7, p0, Lcom/google/android/gms/drive/Permission;->zzadE:Z

    return-void
.end method

.method public static zzbZ(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzca(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/drive/Permission;

    iget-object v3, p0, Lcom/google/android/gms/drive/Permission;->zzadz:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/drive/Permission;->zzadz:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    iget v4, v2, Lcom/google/android/gms/drive/Permission;->zzadA:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/gms/drive/Permission;->zzadD:I

    iget v4, v2, Lcom/google/android/gms/drive/Permission;->zzadD:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/drive/Permission;->zzadE:Z

    iget-boolean v2, v2, Lcom/google/android/gms/drive/Permission;->zzadE:Z

    if-ne v3, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzadD:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzca(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzadD:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/Permission;->zzadz:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/Permission;->zzadD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/Permission;->zzadE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzh;->zza(Lcom/google/android/gms/drive/Permission;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpo()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzbZ(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzadz:Ljava/lang/String;

    return-object v0
.end method

.method public zzpp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzbZ(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzadA:I

    return v0
.end method

.method public zzpq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzadB:Ljava/lang/String;

    return-object v0
.end method

.method public zzpr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzadC:Ljava/lang/String;

    return-object v0
.end method

.method public zzps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/Permission;->zzadE:Z

    return v0
.end method

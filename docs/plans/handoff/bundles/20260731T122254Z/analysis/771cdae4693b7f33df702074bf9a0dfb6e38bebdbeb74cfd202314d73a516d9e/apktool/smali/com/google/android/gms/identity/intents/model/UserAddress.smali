.class public final Lcom/google/android/gms/identity/intents/model/UserAddress;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identity/intents/model/UserAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field private final zzCY:I

.field zzEr:Ljava/lang/String;

.field zzawA:Ljava/lang/String;

.field zzawB:Ljava/lang/String;

.field zzawC:Ljava/lang/String;

.field zzawD:Ljava/lang/String;

.field zzawE:Ljava/lang/String;

.field zzawF:Ljava/lang/String;

.field zzawG:Ljava/lang/String;

.field zzawH:Ljava/lang/String;

.field zzawI:Ljava/lang/String;

.field zzawJ:Ljava/lang/String;

.field zzawK:Z

.field zzawL:Ljava/lang/String;

.field zzawM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/identity/intents/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzCY:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawA:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawB:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawC:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawD:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawE:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawF:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawG:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzEr:Ljava/lang/String;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawH:Ljava/lang/String;

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawI:Ljava/lang/String;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawJ:Ljava/lang/String;

    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawK:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawL:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawM:Ljava/lang/String;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawA:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawB:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawC:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawD:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawE:Ljava/lang/String;

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawF:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawL:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzEr:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawM:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawG:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawJ:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawH:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawI:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzCY:I

    return v0
.end method

.method public isPostBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzawK:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/model/zzb;->zza(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;I)V

    return-void
.end method

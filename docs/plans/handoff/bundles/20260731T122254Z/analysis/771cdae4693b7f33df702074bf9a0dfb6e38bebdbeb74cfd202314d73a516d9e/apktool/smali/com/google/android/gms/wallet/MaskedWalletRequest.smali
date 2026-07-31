.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzCY:I

.field zzaQg:Ljava/lang/String;

.field zzaQn:Ljava/lang/String;

.field zzaQx:Lcom/google/android/gms/wallet/Cart;

.field zzaRi:Z

.field zzaRj:Z

.field zzaRk:Z

.field zzaRl:Ljava/lang/String;

.field zzaRm:Ljava/lang/String;

.field zzaRn:Z

.field zzaRo:Z

.field zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

.field zzaRq:Z

.field zzaRr:Z

.field zzaRs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

.field zzaRu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;",
            "Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQn:Ljava/lang/String;

    move/from16 v3, p3

    iput-boolean v3, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRi:Z

    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRj:Z

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRk:Z

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRl:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQg:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRm:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQx:Lcom/google/android/gms/wallet/Cart;

    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRn:Z

    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRo:Z

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRs:Ljava/util/ArrayList;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRu:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public allowDebitCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    return v0
.end method

.method public allowPrepaidCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedCardNetworks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedCountrySpecificationsForShipping()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedShippingCountrySpecifications()[Lcom/google/android/gms/wallet/CountrySpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object v0
.end method

.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQx:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQg:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimatedTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRm:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQn:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    return v0
.end method

.method public isBillingAgreement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRo:Z

    return v0
.end method

.method public isPhoneNumberRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRi:Z

    return v0
.end method

.method public isShippingAddressRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRj:Z

    return v0
.end method

.method public shouldRetrieveWalletObjects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRn:Z

    return v0
.end method

.method public useMinimalBillingAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRk:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzl;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method

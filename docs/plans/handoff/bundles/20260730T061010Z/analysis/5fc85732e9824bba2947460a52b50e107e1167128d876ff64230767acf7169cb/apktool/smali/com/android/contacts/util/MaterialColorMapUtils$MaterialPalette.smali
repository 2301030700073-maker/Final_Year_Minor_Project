.class public Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPrimaryColor:I

.field public final mSecondaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette$1;

    invoke-direct {v0}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette$1;-><init>()V

    sput-object v0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 44
    iput p2, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/util/MaterialColorMapUtils$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 57
    :cond_1
    const-class v2, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 60
    :cond_2
    check-cast p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    .line 61
    iget v2, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget v3, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 64
    :cond_3
    iget v2, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iget p1, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget v1, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 86
    iget p2, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

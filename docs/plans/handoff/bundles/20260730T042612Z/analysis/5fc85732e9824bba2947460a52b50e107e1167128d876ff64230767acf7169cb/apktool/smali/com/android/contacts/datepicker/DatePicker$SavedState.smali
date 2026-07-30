.class Lcom/android/contacts/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mHasYear:Z

.field private final mMonth:I

.field private final mYear:I

.field private final mYearOptional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 308
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 269
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZZ)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    .line 259
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    .line 260
    iput p4, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    .line 261
    iput-boolean p5, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 262
    iput-boolean p6, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0

    .line 244
    invoke-direct/range {p0 .. p6}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZ)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    return v0
.end method

.method public isYearOptional()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 299
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    iget p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-boolean p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-boolean p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

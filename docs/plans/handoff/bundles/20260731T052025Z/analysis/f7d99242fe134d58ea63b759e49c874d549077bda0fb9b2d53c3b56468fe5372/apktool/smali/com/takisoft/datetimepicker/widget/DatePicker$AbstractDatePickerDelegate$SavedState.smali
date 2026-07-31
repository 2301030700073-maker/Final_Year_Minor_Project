.class public final Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCurrentView:I

.field public final mListPosition:I

.field public final mListPositionOffset:I

.field public final mMaxDate:J

.field public final mMinDate:J

.field public final mSelectedDay:I

.field public final mSelectedMonth:I

.field public final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/openintents/openpgp/OpenPgpError$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lorg/openintents/openpgp/OpenPgpError$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 54
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 55
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 56
    iput p4, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 57
    iput-wide p5, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 58
    iput-wide p7, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 59
    iput p9, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 60
    iput p10, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 61
    iput p11, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

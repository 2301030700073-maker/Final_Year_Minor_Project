.class public final Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mActivatedYear:I

.field public mCount:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 2
    .line 3
    add-int/2addr p0, p1

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 2
    .line 3
    add-int/2addr p0, p1

    .line 4
    int-to-long p0, p0

    .line 5
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const v3, 0x7f0c0585

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/TextView;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    check-cast p2, Landroid/widget/TextView;

    .line 23
    .line 24
    :goto_1
    iget p3, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 25
    .line 26
    add-int/2addr p3, p1

    .line 27
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 28
    .line 29
    if-ne p0, p3, :cond_2

    .line 30
    .line 31
    move p0, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move p0, v1

    .line 34
    :goto_2
    if-nez v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p1, p0, :cond_5

    .line 41
    .line 42
    :cond_3
    if-eqz p0, :cond_4

    .line 43
    .line 44
    const p1, 0x7f1302b4

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const p1, 0x7f1302b3

    .line 49
    .line 50
    .line 51
    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Landroid/view/View;->setActivated(Z)V

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-array p3, v0, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object p1, p3, v1

    .line 68
    .line 69
    const-string p1, "%d"

    .line 70
    .line 71
    invoke-static {p0, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

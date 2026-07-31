.class public Lcom/takisoft/datetimepicker/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

.field public mChildSize:I

.field public mOnYearSelectedListener:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;

.field public mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x1010074

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/YearPickerView;->handleAttr(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/YearPickerView;->handleAttr(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handleAttr(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v0, 0x7f07007a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mViewSize:I

    .line 23
    .line 24
    const v0, 0x7f07007b

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mChildSize:I

    .line 32
    .line 33
    new-instance p1, Lcom/fsck/k9/activity/ChooseIdentity$1;

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/activity/ChooseIdentity$1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    sub-int/2addr p2, p1

    .line 16
    add-int/2addr p2, v0

    .line 17
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mCount:I

    .line 22
    .line 23
    if-eq v0, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 28
    .line 29
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mCount:I

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.class public final Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final calendar:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

.field public final container:Landroid/view/View;

.field public final position:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/takisoft/datetimepicker/widget/SimpleMonthView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 9
    .line 10
    return-void
.end method

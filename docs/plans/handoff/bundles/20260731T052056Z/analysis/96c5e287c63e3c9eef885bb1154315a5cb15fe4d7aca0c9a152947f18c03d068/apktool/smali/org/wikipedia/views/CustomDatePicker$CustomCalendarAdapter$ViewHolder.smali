.class public final Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

.field public final synthetic this$0:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$0:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 2
    .line 3
    iget-object v0, p2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 9
    .line 10
    iget-object p2, p1, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Lorg/wikipedia/views/CustomDatePicker;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p2, p0, p1, v2}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

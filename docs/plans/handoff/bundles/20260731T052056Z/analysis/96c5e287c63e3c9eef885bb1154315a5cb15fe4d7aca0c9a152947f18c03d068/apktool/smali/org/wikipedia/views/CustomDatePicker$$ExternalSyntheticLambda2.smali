.class public final synthetic Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/views/CustomDatePicker;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/CustomDatePicker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/views/CustomDatePicker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    const/16 v1, 0x7e0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/views/CustomDatePicker;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/lit8 v0, v2, -0x1

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, v1, v0, v3}, Ljava/util/Calendar;->set(III)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 43
    .line 44
    :goto_1
    invoke-virtual {p1, v1, v0, v3}, Ljava/util/Calendar;->set(III)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

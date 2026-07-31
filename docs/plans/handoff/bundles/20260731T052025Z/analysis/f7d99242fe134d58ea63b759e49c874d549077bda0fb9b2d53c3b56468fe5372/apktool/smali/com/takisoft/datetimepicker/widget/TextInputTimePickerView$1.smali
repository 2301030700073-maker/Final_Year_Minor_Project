.class public final Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget v0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->$r8$clinit:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

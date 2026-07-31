.class public final Landroidx/appcompat/widget/SearchView$9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onNothingSelected$androidx$appcompat$widget$ListPopupWindow$3(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onNothingSelected$androidx$appcompat$widget$SearchView$9(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onNothingSelected$androidx$preference$DropDownPreference$1(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onNothingSelected$com$takisoft$datetimepicker$widget$TextInputTimePickerView$3(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget p4, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    .line 2
    .line 3
    const/4 p5, 0x0

    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p4, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p5}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x1

    .line 23
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;->getSelection()Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_1

    .line 63
    .line 64
    sget p3, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->$r8$clinit:I

    .line 65
    .line 66
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/load/Option$1;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :cond_2
    const-string p0, "accountUuid"

    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :cond_3
    const-string p0, "accountSpinner"

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :pswitch_1
    check-cast p0, Landroidx/preference/DropDownPreference;

    .line 86
    .line 87
    if-ltz p3, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 90
    .line 91
    aget-object p1, p1, p3

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void

    .line 112
    :pswitch_2
    const/4 p1, -0x1

    .line 113
    if-eq p3, p1, :cond_5

    .line 114
    .line 115
    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    .line 116
    .line 117
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 118
    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0, p5}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void

    .line 125
    :pswitch_3
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 126
    .line 127
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->onItemSelected(I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :pswitch_1
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

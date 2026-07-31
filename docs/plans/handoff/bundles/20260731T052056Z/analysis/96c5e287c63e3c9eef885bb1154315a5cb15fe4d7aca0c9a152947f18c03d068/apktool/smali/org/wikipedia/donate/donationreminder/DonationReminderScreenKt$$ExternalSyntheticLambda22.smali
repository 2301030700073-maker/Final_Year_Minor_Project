.class public final synthetic Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const-string v3, "reminder_config"

    .line 7
    .line 8
    const-string v4, "global_setting"

    .line 9
    .line 10
    iget-object v5, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda22;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/donate/donationreminder/OptionItem;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    instance-of v0, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move-object v6, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v6, v3

    .line 33
    :goto_0
    const/4 v11, 0x0

    .line 34
    const/16 v12, 0xfc

    .line 35
    .line 36
    const-string v5, "amount_change_click"

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    invoke-static/range {v5 .. v12}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;->value:Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->updateDonationAmountState(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    instance-of p0, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Custom;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    move-object v1, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    instance-of v0, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iget-boolean v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    move-object v6, v4

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    move-object v6, v3

    .line 86
    :goto_3
    const/4 v11, 0x0

    .line 87
    const/16 v12, 0xfc

    .line 88
    .line 89
    const-string v5, "freq_change_click"

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    invoke-static/range {v5 .. v12}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    check-cast p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 99
    .line 100
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;->value:Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {p0, p1}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->updateReadFrequencyState(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    instance-of p0, p1, Lorg/wikipedia/donate/donationreminder/OptionItem$Custom;

    .line 111
    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_4
    move-object v1, v2

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 122
    .line 123
    .line 124
    :goto_5
    return-object v1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lokhttp3/MultipartBody$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/MultipartBody$Builder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;->f$0:Lokhttp3/MultipartBody$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    const v0, 0x7f120684

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;->f$0:Lokhttp3/MultipartBody$Builder;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/widget/CheckBox;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lorg/wikipedia/events/ReadingListsEnableSyncStatusEvent;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    const/4 p1, 0x0

    .line 36
    sput-boolean p1, Lokhttp3/Cache$Companion;->PROMPT_LOGIN_TO_SYNC_DIALOG_SHOWING:Z

    .line 37
    .line 38
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 39
    .line 40
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroid/widget/CheckBox;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    xor-int/lit8 p0, p0, 0x1

    .line 49
    .line 50
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    sget p1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 55
    .line 56
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 57
    .line 58
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Landroid/widget/CheckBox;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    xor-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    const p1, 0x7f120681

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

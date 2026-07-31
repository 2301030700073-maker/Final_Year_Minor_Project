.class public final Landroidx/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/preference/Preference;

    .line 12
    .line 13
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 20
    .line 21
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 22
    .line 23
    .line 24
    const p0, 0x7f12065f

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    const p1, 0x7f12065e

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    check-cast p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 42
    .line 43
    iput p2, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 44
    .line 45
    const/4 p2, -0x1

    .line 46
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 47
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

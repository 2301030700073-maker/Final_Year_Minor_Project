.class public final Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/takisoft/preferencex/SwitchPreferenceCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/preferencex/SwitchPreferenceCompat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;->this$0:Lcom/takisoft/preferencex/SwitchPreferenceCompat;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;->this$0:Lcom/takisoft/preferencex/SwitchPreferenceCompat;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 9
    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->performClick(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

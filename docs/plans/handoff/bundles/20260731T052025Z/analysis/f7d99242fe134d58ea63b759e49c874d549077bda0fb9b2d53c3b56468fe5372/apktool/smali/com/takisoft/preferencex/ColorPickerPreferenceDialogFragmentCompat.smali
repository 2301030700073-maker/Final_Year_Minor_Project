.class public Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/colorpicker/OnColorSelectedListener;


# instance fields
.field public pickedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onColorSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;->pickedColor:I

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 5
    .line 6
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/takisoft/preferencex/ColorPickerPreference;

    .line 6
    .line 7
    new-instance v0, Lorg/minidns/edns/Edns;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lorg/minidns/edns/Edns;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->color:I

    .line 17
    .line 18
    iput v1, v0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 19
    .line 20
    iget-object v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->colors:[I

    .line 21
    .line 22
    iput-object v1, v0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->colorDescriptions:[Ljava/lang/CharSequence;

    .line 25
    .line 26
    iput-object v1, v0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 27
    .line 28
    iget v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->size:I

    .line 29
    .line 30
    iput v1, v0, Lorg/minidns/edns/Edns;->flags:I

    .line 31
    .line 32
    iget-boolean v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->sortColors:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 35
    .line 36
    iget v1, p1, Lcom/takisoft/preferencex/ColorPickerPreference;->columns:I

    .line 37
    .line 38
    iput v1, v0, Lorg/minidns/edns/Edns;->version:I

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/minidns/edns/Edns;->build()Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/takisoft/colorpicker/ColorPickerDialog;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2, p0, v0}, Lcom/takisoft/colorpicker/ColorPickerDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p1, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method public final onDialogClosed(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/takisoft/preferencex/ColorPickerPreference;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;->pickedColor:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;->pickedColor:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/takisoft/preferencex/ColorPickerPreference;->setInternalColor(IZ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

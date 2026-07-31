.class public final Lcom/fsck/k9/ui/settings/account/VibrationPreference;
.super Landroidx/preference/ListPreference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT_VIBRATE_PATTERN:Lnet/thunderbird/feature/notification/VibratePattern;


# instance fields
.field public isVibrationEnabled:Z

.field public vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

.field public vibrationTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 2
    .line 3
    sput-object v0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->DEFAULT_VIBRATE_PATTERN:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 4
    .line 5
    const-class v0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 6
    .line 7
    const-class v1, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->registerPreferenceFragment(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    sget-object p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->DEFAULT_VIBRATE_PATTERN:Lnet/thunderbird/feature/notification/VibratePattern;

    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibrationTimes:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 7
    .line 8
    if-eqz p6, :cond_1

    .line 9
    .line 10
    const p3, 0x7f0404c9

    .line 11
    .line 12
    .line 13
    const p6, 0x101008e

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p3, p6}, Landroidx/core/content/res/CamUtils;->getAttr(Landroid/content/Context;II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 21
    .line 22
    if-eqz p5, :cond_2

    .line 23
    .line 24
    const/4 p4, 0x0

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceFragmentCompat;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/DialogPreference;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/appcompat/app/ActionBar;->decode(Ljava/lang/String;)Lkotlin/Triple;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p1, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 25
    .line 26
    iget-object p1, p1, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->isVibrationEnabled:Z

    .line 35
    .line 36
    iput-object v1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 37
    .line 38
    iput p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibrationTimes:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->updateSummary()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final updateSummary()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->isVibrationEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 11
    .line 12
    invoke-virtual {v1}, Lnet/thunderbird/feature/notification/VibratePattern;->serialize()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 25
    .line 26
    aget-object v0, v1, v0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v1, 0x7f120165

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

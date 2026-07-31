.class public final Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final backgroundColors:[I

.field public final defaultBackgroundColor:I

.field public final hasDefaultBackgroundColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/thunderbird/core/ui/theme/manager/ThemeManager;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 9
    .line 10
    iget-boolean p2, p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isColorizeMissingContactPictures:Z

    .line 11
    .line 12
    xor-int/lit8 p3, p2, 0x1

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->hasDefaultBackgroundColor:Z

    .line 15
    .line 16
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 17
    .line 18
    const v0, 0x7f13031b

    .line 19
    .line 20
    .line 21
    invoke-direct {p3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p3, 0x0

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const p2, 0x7f040162

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->defaultBackgroundColor:I

    .line 42
    .line 43
    new-array p1, p3, [I

    .line 44
    .line 45
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->backgroundColors:[I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iput p3, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->defaultBackgroundColor:I

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance p2, Landroid/util/TypedValue;

    .line 54
    .line 55
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .line 57
    .line 58
    const p3, 0x7f040161

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->backgroundColors:[I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    const-string p0, "Couldn\'t resolve attribute ("

    .line 85
    .line 86
    const-string p1, ")"

    .line 87
    .line 88
    invoke-static {p3, p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    throw p0
.end method

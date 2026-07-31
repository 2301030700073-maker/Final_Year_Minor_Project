.class public final Lcom/fsck/k9/ui/settings/account/AndroidVibrator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/ui/settings/account/Vibrator;


# instance fields
.field public final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;->vibrator:Landroid/os/Vibrator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final vibrate([J)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;->vibrator:Landroid/os/Vibrator;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

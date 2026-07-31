.class public final Lorg/wikipedia/theme/ThemeFittingRoomActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/theme/ThemeChooserDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/theme/ThemeFittingRoomActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/theme/ThemeFittingRoomFragment;",
        "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    new-instance p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget p1, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 7
    .line 8
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->SETTINGS:Lorg/wikipedia/Constants$InvokeSource;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lorg/wikipedia/login/LoginClient;->newInstance(Lorg/wikipedia/Constants$InvokeSource;Z)Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const p1, 0x106000c

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onEditingPrefsChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onToggleDimImages()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onToggleReadingFocusMode()V
    .locals 0

    .line 1
    return-void
.end method

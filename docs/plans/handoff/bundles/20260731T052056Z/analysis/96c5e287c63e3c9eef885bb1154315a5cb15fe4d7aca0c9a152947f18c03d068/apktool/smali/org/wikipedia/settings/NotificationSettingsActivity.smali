.class public final Lorg/wikipedia/settings/NotificationSettingsActivity;
.super Lorg/wikipedia/settings/BaseSettingsActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/settings/BaseSettingsActivity;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/settings/NotificationSettingsActivity;",
        "Lorg/wikipedia/settings/BaseSettingsActivity;",
        "Lorg/wikipedia/settings/NotificationSettingsFragment;",
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


# instance fields
.field public final title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f120474

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lorg/wikipedia/settings/NotificationSettingsActivity;->title:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    .line 4
    .line 5
    new-instance p0, Lorg/wikipedia/settings/NotificationSettingsFragment;

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/wikipedia/settings/NotificationSettingsFragment;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final getTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/NotificationSettingsActivity;->title:I

    .line 2
    .line 3
    return p0
.end method

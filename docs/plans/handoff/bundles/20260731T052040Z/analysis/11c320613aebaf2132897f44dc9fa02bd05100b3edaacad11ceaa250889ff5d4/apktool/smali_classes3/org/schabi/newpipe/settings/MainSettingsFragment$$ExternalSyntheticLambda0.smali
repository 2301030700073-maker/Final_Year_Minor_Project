.class public final synthetic Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/MainSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/MainSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/MainSettingsFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/MainSettingsFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 7
    .line 8
    .line 9
    return p1
.end method

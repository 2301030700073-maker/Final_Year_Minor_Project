.class public final synthetic Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    invoke-virtual {v3}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v4, v3, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    new-instance v6, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v6, v3, v4}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 30
    .line 31
    move v3, p1

    .line 32
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILandroid/view/View;ZLorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

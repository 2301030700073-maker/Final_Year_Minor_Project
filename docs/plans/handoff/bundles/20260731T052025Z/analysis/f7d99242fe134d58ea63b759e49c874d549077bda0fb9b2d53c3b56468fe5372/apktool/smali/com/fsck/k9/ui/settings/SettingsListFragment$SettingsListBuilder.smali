.class public final Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public itemId:J

.field public final settingsList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addAction(ILjava/lang/String;I)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long v7, v0, v2

    .line 6
    .line 7
    iput-wide v7, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 8
    .line 9
    new-instance v4, Lcom/fsck/k9/ui/settings/SettingsActionItem;

    .line 10
    .line 11
    move v5, p1

    .line 12
    move-object v9, p2

    .line 13
    move v6, p3

    .line 14
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/ui/settings/SettingsActionItem;-><init>(IIJLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final addSection(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 7
    .line 8
    new-instance v2, Lcom/fsck/k9/ui/settings/SettingsDividerItem;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1, p1}, Lcom/fsck/k9/ui/settings/SettingsDividerItem;-><init>(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

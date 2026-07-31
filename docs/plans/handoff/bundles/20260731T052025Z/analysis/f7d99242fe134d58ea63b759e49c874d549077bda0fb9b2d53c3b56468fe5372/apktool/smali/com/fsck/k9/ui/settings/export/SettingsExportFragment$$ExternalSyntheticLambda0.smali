.class public final synthetic Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

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
    .locals 5

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Lcom/fsck/k9/ui/settings/export/Action$ShareDocument;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->contentUri:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/fsck/k9/ui/settings/export/Action$ShareDocument;-><init>(Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/fsck/k9/ui/settings/export/ButtonState;->DISABLED:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 38
    .line 39
    iput-object v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 43
    .line 44
    iput-boolean v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 45
    .line 46
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->settingsExporter:Lcom/fsck/k9/preferences/SettingsExporter;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 61
    .line 62
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 63
    .line 64
    const-string/jumbo v4, "yyyy-MM-dd"

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/fsck/k9/preferences/SettingsExporter;->filePrefixProvider:Lcom/fsck/k9/preferences/FilePrefixProvider;

    .line 71
    .line 72
    check-cast p1, Lapp/k9mail/provider/K9AppNameProvider;

    .line 73
    .line 74
    iget-object p1, p1, Lapp/k9mail/provider/K9AppNameProvider;->filePrefix:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x4

    .line 85
    new-array v4, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p1, v4, v0

    .line 88
    .line 89
    const-string p1, "settings_export"

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    aput-object p1, v4, v0

    .line 93
    .line 94
    const/4 p1, 0x2

    .line 95
    aput-object v1, v4, p1

    .line 96
    .line 97
    const-string p1, "k9s"

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    aput-object p1, v4, v0

    .line 101
    .line 102
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v0, "%s_%s_%s.%s"

    .line 107
    .line 108
    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Lcom/fsck/k9/ui/settings/export/Action$PickDocument;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Lcom/fsck/k9/ui/settings/export/Action$PickDocument;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

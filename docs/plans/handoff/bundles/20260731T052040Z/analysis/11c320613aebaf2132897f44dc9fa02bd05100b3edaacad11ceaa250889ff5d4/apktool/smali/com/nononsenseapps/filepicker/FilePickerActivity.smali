.class public abstract Lcom/nononsenseapps/filepicker/FilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public allowCreateDir:Z

.field public allowExistingFile:Z

.field public allowMultiple:Z

.field public mode:I

.field public singleClick:Z

.field public startPath:Ljava/lang/String;


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00c1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "nononsense.intent.START_PATH"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->startPath:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "nononsense.intent.MODE"

    .line 25
    .line 26
    iget v1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->mode:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->mode:I

    .line 33
    .line 34
    const-string v0, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowCreateDir:Z

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowCreateDir:Z

    .line 43
    .line 44
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowMultiple:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowMultiple:Z

    .line 53
    .line 54
    const-string v0, "android.intent.extra.ALLOW_EXISTING_FILE"

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowExistingFile:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowExistingFile:Z

    .line 63
    .line 64
    const-string v0, "nononsense.intent.SINGLE_CLICK"

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->singleClick:Z

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->singleClick:Z

    .line 73
    .line 74
    :cond_0
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onFilePicked(Landroid/net/Uri;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onResume()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "filepicker_fragment"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_7

    .line 15
    .line 16
    iget-object v2, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->startPath:Ljava/lang/String;

    .line 17
    .line 18
    iget v3, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->mode:I

    .line 19
    .line 20
    iget-boolean v4, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowMultiple:Z

    .line 21
    .line 22
    iget-boolean v5, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowCreateDir:Z

    .line 23
    .line 24
    iget-boolean v6, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->allowExistingFile:Z

    .line 25
    .line 26
    iget-boolean v7, p0, Lcom/nononsenseapps/filepicker/FilePickerActivity;->singleClick:Z

    .line 27
    .line 28
    check-cast p0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    .line 29
    .line 30
    new-instance v8, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    .line 31
    .line 32
    invoke-direct {v8}, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    const/4 v9, 0x3

    .line 47
    if-ne v3, v9, :cond_2

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string p0, "MODE_NEW_FILE does not support \'allowMultiple\'"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string p0, "\'singleClick\' can not be used with \'allowMultiple\'"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    if-nez v9, :cond_5

    .line 74
    .line 75
    new-instance v9, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    :cond_5
    if-eqz v2, :cond_6

    .line 81
    .line 82
    const-string v10, "KEY_START_PATH"

    .line 83
    .line 84
    invoke-virtual {v9, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    const-string v2, "KEY_ALLOW_DIR_CREATE"

    .line 88
    .line 89
    invoke-virtual {v9, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string v2, "KEY_ALLOW_MULTIPLE"

    .line 93
    .line 94
    invoke-virtual {v9, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    const-string v2, "KEY_ALLOW_EXISTING_FILE"

    .line 98
    .line 99
    invoke-virtual {v9, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    const-string v2, "KEY_SINGLE_CLICK"

    .line 103
    .line 104
    invoke-virtual {v9, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    const-string v2, "KEY_MODE"

    .line 108
    .line 109
    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    iput-object v8, p0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->currentFragment:Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    .line 116
    .line 117
    move-object v2, v8

    .line 118
    :cond_7
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 119
    .line 120
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a01a7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    .line 2
    .line 3
    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

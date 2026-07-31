.class public abstract Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public allowCreateDir:Z

.field public allowExistingFile:Z

.field public allowMultiple:Z

.field public isLoading:Z

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

.field public final mCheckedItems:Ljava/util/HashSet;

.field public final mCheckedVisibleViewHolders:Ljava/util/HashSet;

.field public mCurrentDirView:Landroid/widget/TextView;

.field public mCurrentPath:Ljava/lang/Object;

.field public mEditTextFileName:Landroid/widget/EditText;

.field public mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

.field public mNewFileButtonContainer:Landroid/view/View;

.field public mRegularButtonContainer:Landroid/view/View;

.field public mToast:Landroid/widget/Toast;

.field public mode:I

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public singleClick:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 18
    .line 19
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isLoading:Z

    .line 24
    .line 25
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mNewFileButtonContainer:Landroid/view/View;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mRegularButtonContainer:Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final clearSelections()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public abstract getFullPath(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getLoader()Lcom/nononsenseapps/filepicker/FilePickerFragment$1;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getParent(Ljava/lang/Object;)Ljava/io/File;
.end method

.method public abstract getPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getRoot()Ljava/io/File;
.end method

.method public final goToDir(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isLoading:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->refresh(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public handlePermission(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public hasPermission(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isCheckable(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isDir(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :cond_0
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    :cond_1
    return v3

    .line 25
    :cond_2
    return v1

    .line 26
    :cond_3
    if-eqz v0, :cond_5

    .line 27
    .line 28
    if-eq v0, v2, :cond_5

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 31
    .line 32
    if-eqz p0, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    return v1

    .line 36
    :cond_5
    :goto_0
    return v3
.end method

.method public abstract isDir(Ljava/lang/Object;)Z
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " must implement OnFilePickedListener"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final onClickCheckBox(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->file:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->file:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->clearSelections()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->file:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_12

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object p1, v0

    .line 40
    :goto_0
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_3
    iget p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-ne p1, v3, :cond_7

    .line 49
    .line 50
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mEditTextFileName:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "/"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget-object v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getFullPath(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2, v0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_1
    const-string v2, "//"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-le v2, v4, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-static {v4, v1, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_2
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerActivity;->onFilePicked(Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_7
    iget-boolean v3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 131
    .line 132
    if-eqz v3, :cond_c

    .line 133
    .line 134
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 135
    .line 136
    new-instance v3, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_8

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {p0, v5}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    new-instance p0, Landroid/content/Intent;

    .line 167
    .line 168
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 172
    .line 173
    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_9

    .line 190
    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Landroid/net/Uri;

    .line 196
    .line 197
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    const-string v4, "nononsense.intent.PATHS"

    .line 206
    .line 207
    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_b

    .line 219
    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroid/net/Uri;

    .line 225
    .line 226
    if-nez v0, :cond_a

    .line 227
    .line 228
    new-instance v0, Landroid/content/ClipData;

    .line 229
    .line 230
    new-array v4, v1, [Ljava/lang/String;

    .line 231
    .line 232
    new-instance v5, Landroid/content/ClipData$Item;

    .line 233
    .line 234
    invoke-direct {v5, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 235
    .line 236
    .line 237
    const-string v3, "Paths"

    .line 238
    .line 239
    invoke-direct {v0, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    new-instance v4, Landroid/content/ClipData$Item;

    .line 244
    .line 245
    invoke-direct {v4, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 253
    .line 254
    .line 255
    const/4 v0, -0x1

    .line 256
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_c
    if-nez p1, :cond_e

    .line 264
    .line 265
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_d

    .line 276
    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :cond_d
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p1, p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;->onFilePicked(Landroid/net/Uri;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_e
    if-ne p1, v4, :cond_f

    .line 290
    .line 291
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 292
    .line 293
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {p1, p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;->onFilePicked(Landroid/net/Uri;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_f
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 308
    .line 309
    if-eqz p1, :cond_10

    .line 310
    .line 311
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 312
    .line 313
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;->onFilePicked(Landroid/net/Uri;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_10
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_11

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    :cond_11
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->toUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;->onFilePicked(Landroid/net/Uri;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_12
    :goto_6
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    .line 344
    .line 345
    if-nez p1, :cond_13

    .line 346
    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    const v0, 0x7f13035c

    .line 352
    .line 353
    .line 354
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    .line 359
    .line 360
    :cond_13
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    const v0, 0x7f0f0013

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a028c

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 15
    .line 16
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    const p3, 0x7f0d00c5

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0295

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const p2, 0x102000a

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const v2, 0x7f04039c

    .line 67
    .line 68
    .line 69
    filled-new-array {v2}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    new-instance v1, Lcom/nononsenseapps/filepicker/DividerItemDecoration;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v2, v1, Lcom/nononsenseapps/filepicker/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    new-instance p2, Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 97
    .line 98
    invoke-direct {p2, p0}, Lcom/nononsenseapps/filepicker/FileItemAdapter;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;)V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    .line 107
    .line 108
    const p2, 0x7f0a028d

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-instance v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;

    .line 116
    .line 117
    invoke-direct {v1, p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    const p2, 0x7f0a028f

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    new-instance v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;

    .line 131
    .line 132
    invoke-direct {v0, p0, p3}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    const p2, 0x7f0a0290

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    new-instance p3, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;

    .line 146
    .line 147
    const/4 v0, 0x2

    .line 148
    invoke-direct {p3, p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$1;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    const p2, 0x7f0a0294

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mNewFileButtonContainer:Landroid/view/View;

    .line 162
    .line 163
    const p2, 0x7f0a028e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mRegularButtonContainer:Landroid/view/View;

    .line 171
    .line 172
    const p2, 0x7f0a0296

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Landroid/widget/EditText;

    .line 180
    .line 181
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mEditTextFileName:Landroid/widget/EditText;

    .line 182
    .line 183
    new-instance p3, Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 184
    .line 185
    invoke-direct {p3, p0, v0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    .line 190
    .line 191
    const p2, 0x7f0a0292

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/widget/TextView;

    .line 199
    .line 200
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentDirView:Landroid/widget/TextView;

    .line 201
    .line 202
    iget-object p3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 203
    .line 204
    if-eqz p3, :cond_2

    .line 205
    .line 206
    if-eqz p2, :cond_2

    .line 207
    .line 208
    invoke-virtual {p0, p3}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getFullPath(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    :cond_2
    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const v0, 0x7f0d00c4

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const v0, 0x7f0d00c3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;

    .line 44
    .line 45
    invoke-direct {p2, p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$HeaderViewHolder;

    .line 62
    .line 63
    invoke-direct {p2, p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$HeaderViewHolder;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    return-object p2
.end method

.method public final onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/FilePickerActivity;

    .line 6
    .line 7
    return-void
.end method

.method public onLoadFinished(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Landroidx/recyclerview/widget/SortedList;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isLoading:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 15
    .line 16
    iput-object p2, v0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentDirView:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getFullPath(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 39
    .line 40
    iget-boolean p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 43
    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-ne p2, v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p2, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 69
    .line 70
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 71
    .line 72
    invoke-static {v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ltz p1, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 79
    .line 80
    aget-object v1, p2, p1

    .line 81
    .line 82
    sget-object v2, Landroidx/collection/ArraySetKt;->DELETED$1:Ljava/lang/Object;

    .line 83
    .line 84
    if-eq v1, v2, :cond_1

    .line 85
    .line 86
    aput-object v2, p2, p1

    .line 87
    .line 88
    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 89
    .line 90
    :cond_1
    return-void

    .line 91
    :cond_2
    const-string p0, "destroyLoader must be called on the main thread"

    .line 92
    .line 93
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    const-string p0, "Called while creating a loader"

    .line 98
    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public bridge onLoadFinished(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p2, Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onLoadFinished(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Landroidx/recyclerview/widget/SortedList;)V

    return-void
.end method

.method public abstract onNewFolder(Ljava/lang/String;)V
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    const v0, 0x7f0a028c

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/nononsenseapps/filepicker/NewFolderFragment;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/nononsenseapps/filepicker/NewFolderFragment;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p0, v0, Lcom/nononsenseapps/filepicker/NewItemFragment;->listener:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 30
    .line 31
    const-string p0, "new_folder_fragment"

    .line 32
    .line 33
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "KEY_CURRENT_PATH"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "KEY_ALLOW_MULTIPLE"

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v0, "KEY_ALLOW_EXISTING_FILE"

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "KEY_ALLOW_DIR_CREATE"

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "KEY_SINGLE_CLICK"

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "KEY_MODE"

    .line 41
    .line 42
    iget v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez p1, :cond_2

    .line 4
    .line 5
    const-string p1, "KEY_SINGLE_CLICK"

    .line 6
    .line 7
    const-string v0, "KEY_ALLOW_EXISTING_FILE"

    .line 8
    .line 9
    const-string v1, "KEY_ALLOW_MULTIPLE"

    .line 10
    .line 11
    const-string v2, "KEY_ALLOW_DIR_CREATE"

    .line 12
    .line 13
    const-string v3, "KEY_MODE"

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget v4, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 18
    .line 19
    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iput v3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 26
    .line 27
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput-boolean v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 34
    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 42
    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 50
    .line 51
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 56
    .line 57
    const-string p1, "KEY_CURRENT_PATH"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget v4, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 88
    .line 89
    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    iput p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iget-boolean v3, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 100
    .line 101
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput-boolean p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowCreateDir:Z

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 112
    .line 113
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    iput-boolean p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowMultiple:Z

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 124
    .line 125
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    iput-boolean p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->allowExistingFile:Z

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 136
    .line 137
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string p2, "KEY_START_PATH"

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_2

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isDir(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_1

    .line 178
    .line 179
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getParent(Ljava/lang/Object;)Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 187
    .line 188
    iget-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mEditTextFileName:Landroid/widget/EditText;

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getName(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :cond_2
    :goto_0
    iget p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    .line 198
    .line 199
    const/4 p2, 0x3

    .line 200
    const/4 v0, 0x0

    .line 201
    if-ne p1, p2, :cond_3

    .line 202
    .line 203
    const/4 p1, 0x1

    .line 204
    goto :goto_1

    .line 205
    :cond_3
    move p1, v0

    .line 206
    :goto_1
    iget-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mNewFileButtonContainer:Landroid/view/View;

    .line 207
    .line 208
    const/16 v1, 0x8

    .line 209
    .line 210
    if-eqz p1, :cond_4

    .line 211
    .line 212
    move v2, v0

    .line 213
    goto :goto_2

    .line 214
    :cond_4
    move v2, v1

    .line 215
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mRegularButtonContainer:Landroid/view/View;

    .line 219
    .line 220
    if-eqz p1, :cond_5

    .line 221
    .line 222
    move v0, v1

    .line 223
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    if-nez p1, :cond_6

    .line 227
    .line 228
    iget-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->singleClick:Z

    .line 229
    .line 230
    if-eqz p1, :cond_6

    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const p2, 0x7f0a028f

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    :cond_6
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 247
    .line 248
    if-nez p1, :cond_7

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getRoot()Ljava/io/File;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 255
    .line 256
    :cond_7
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->refresh(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final refresh(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const-class v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->hasPermission(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isLoading:Z

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v1, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 19
    .line 20
    iget-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 21
    .line 22
    iget-object v4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 23
    .line 24
    if-nez v3, :cond_5

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-ne v3, v5, :cond_4

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v5, 0x0

    .line 51
    :goto_0
    const-string v6, "Object returned from onCreateLoader must not be a non-static inner member class: "

    .line 52
    .line 53
    :try_start_0
    iput-boolean p1, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getLoader()Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    :goto_1
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 97
    .line 98
    invoke-direct {v0, p1, v5}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Lcom/nononsenseapps/filepicker/FilePickerFragment$1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    iput-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 105
    .line 106
    iget-object p1, v1, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 107
    .line 108
    new-instance v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 111
    .line 112
    invoke-direct {v1, v2, p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 119
    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iput-object p1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 126
    .line 127
    iput-object v1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 128
    .line 129
    return-void

    .line 130
    :goto_2
    iput-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 131
    .line 132
    throw p0

    .line 133
    :cond_4
    const-string p0, "restartLoader must be called on the main thread"

    .line 134
    .line 135
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    const-string p0, "Called while creating a loader"

    .line 140
    .line 141
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->handlePermission(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public abstract toUri(Ljava/lang/Object;)Landroid/net/Uri;
.end method

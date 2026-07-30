.class Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/GroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterCursorWrapper"
.end annotation


# instance fields
.field private mCount:I

.field private mIndex:[I

.field private mPos:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/GroupMemberPickerFragment;Landroid/database/Cursor;)V
    .locals 11

    .line 77
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    .line 74
    iput v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    .line 79
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    .line 80
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mIndex:[I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "GroupMemberPicker"

    const/4 v3, 0x2

    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RawContacts CursorWrapper start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v4, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    .line 89
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 91
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v6, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v6, v4, v5}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    .line 95
    :goto_2
    iget v8, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    if-ge v7, v8, :cond_4

    .line 96
    invoke-super {p0, v7}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 97
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-static {p1}, Lcom/android/contacts/list/GroupMemberPickerFragment;->access$000(Lcom/android/contacts/list/GroupMemberPickerFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 99
    iget-object v8, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mIndex:[I

    iget v9, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    aput v7, v8, v9

    goto :goto_3

    .line 101
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 105
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsSectionIndexer;->getPositions()[I

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/android/contacts/group/GroupUtil;->needTrimming(I[I[I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    invoke-static {p2, v6, v1, v4, v5}, Lcom/android/contacts/group/GroupUtil;->updateBundle(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsSectionIndexer;Ljava/util/List;[Ljava/lang/String;[I)V

    .line 109
    :cond_5
    iget p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    iput p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    .line 110
    iput v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    .line 111
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToFirst()Z

    .line 113
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RawContacts CursorWrapper end: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .line 145
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 146
    iput v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    return v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 149
    iput p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    return v1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mIndex:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    .line 153
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

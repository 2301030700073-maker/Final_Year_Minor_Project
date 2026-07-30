.class Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "GroupMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
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
.method public constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;Landroid/database/Cursor;)V
    .locals 12

    .line 103
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    .line 100
    iput v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    .line 105
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    .line 106
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mIndex:[I

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "GroupMembers"

    const/4 v3, 0x2

    .line 110
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group members CursorWrapper start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v4, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    .line 115
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 117
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v6, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v6, v4, v5}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 121
    :goto_1
    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$000(Lcom/android/contacts/group/GroupMembersFragment;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    const/4 v7, 0x0

    .line 122
    :goto_2
    iget v8, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    if-ge v7, v8, :cond_4

    .line 123
    invoke-super {p0, v7}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 124
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$000(Lcom/android/contacts/group/GroupMembersFragment;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 126
    iget-object v9, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mIndex:[I

    iget v10, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    aput v7, v9, v10

    .line 127
    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$000(Lcom/android/contacts/group/GroupMembersFragment;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 129
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 133
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsSectionIndexer;->getPositions()[I

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/android/contacts/group/GroupUtil;->needTrimming(I[I[I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    invoke-static {p2, v6, v1, v4, v5}, Lcom/android/contacts/group/GroupUtil;->updateBundle(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsSectionIndexer;Ljava/util/List;[Ljava/lang/String;[I)V

    .line 137
    :cond_5
    iget p1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    iput p1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    .line 138
    iput v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    .line 139
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToFirst()Z

    .line 141
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Group members CursorWrapper end: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

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

    .line 186
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 174
    iput v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    return v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 177
    iput p1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    return v1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mIndex:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    .line 181
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

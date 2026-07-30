.class public final Lcom/android/contacts/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mContentUri:Ljava/lang/String;

.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNumber:Z

.field private mLabel:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mResultLimit:I

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mResultLimit:I

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayNumber:Z

    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getResultLimit()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mResultLimit:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isDisplayNumber()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayNumber:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPhotoSupported()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryPartition{mDirectoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mContentUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDirectoryType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPriorityDirectory="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhotoSupported="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mResultLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mResultLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/android/contacts/group/GroupListItem;
.super Ljava/lang/Object;
.source "GroupListItem.java"


# instance fields
.field private final mGroupId:J

.field private final mIsReadOnly:Z

.field private final mMemberCount:I

.field private final mSystemId:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p4, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    .line 40
    iput-object p6, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    .line 42
    iput p8, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    .line 43
    iput-boolean p9, p0, Lcom/android/contacts/group/GroupListItem;->mIsReadOnly:Z

    .line 44
    iput-object p10, p0, Lcom/android/contacts/group/GroupListItem;->mSystemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupListItem;->mIsReadOnly:Z

    return v0
.end method

.class public Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;
.super Ljava/lang/Object;
.source "GroupMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMembersQuery"
.end annotation


# static fields
.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "contact_id"

    const-string v1, "raw_contact_id"

    const-string v2, "photo_id"

    const-string v3, "lookup"

    const-string v4, "contact_presence"

    const-string v5, "contact_status"

    const-string v6, "display_name"

    .line 40
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "contact_id"

    const-string v2, "raw_contact_id"

    const-string v3, "photo_id"

    const-string v4, "lookup"

    const-string v5, "contact_presence"

    const-string v6, "contact_status"

    const-string v7, "display_name_alt"

    .line 50
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

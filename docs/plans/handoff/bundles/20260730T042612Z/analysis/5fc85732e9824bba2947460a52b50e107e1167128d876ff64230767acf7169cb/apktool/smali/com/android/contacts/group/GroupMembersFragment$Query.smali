.class public abstract Lcom/android/contacts/group/GroupMembersFragment$Query;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Query"
.end annotation


# static fields
.field public static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "contact_id"

    const-string v1, "_id"

    const-string v2, "is_super_primary"

    const-string v3, "data1"

    .line 313
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/group/GroupMembersFragment$Query;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 320
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/group/GroupMembersFragment$Query;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

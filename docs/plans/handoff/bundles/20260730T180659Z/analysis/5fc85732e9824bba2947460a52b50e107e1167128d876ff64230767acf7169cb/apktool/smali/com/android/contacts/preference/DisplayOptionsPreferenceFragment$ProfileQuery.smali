.class public Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;
.super Ljava/lang/Object;
.source "DisplayOptionsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileQuery"
.end annotation


# static fields
.field private static final PROFILE_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROFILE_PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "is_user_profile"

    const-string v3, "display_name_source"

    .line 113
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->PROFILE_PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "display_name_alt"

    .line 120
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->PROFILE_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->PROFILE_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->PROFILE_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/android/contacts/list/ContactListAdapter$ContactQuery;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactQuery"
.end annotation


# static fields
.field private static final CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "contact_presence"

    const-string v3, "contact_status"

    const-string v4, "photo_id"

    const-string v5, "photo_thumb_uri"

    const-string v6, "lookup"

    const-string v7, "phonetic_name"

    const-string v8, "starred"

    .line 44
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "display_name_alt"

    const-string v3, "contact_presence"

    const-string v4, "contact_status"

    const-string v5, "photo_id"

    const-string v6, "photo_thumb_uri"

    const-string v7, "lookup"

    const-string v8, "phonetic_name"

    const-string v9, "starred"

    .line 56
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "display_name"

    const-string v3, "contact_presence"

    const-string v4, "contact_status"

    const-string v5, "photo_id"

    const-string v6, "photo_thumb_uri"

    const-string v7, "lookup"

    const-string v8, "phonetic_name"

    const-string v9, "starred"

    const-string v10, "snippet"

    .line 68
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "display_name_alt"

    const-string v3, "contact_presence"

    const-string v4, "contact_status"

    const-string v5, "photo_id"

    const-string v6, "photo_thumb_uri"

    const-string v7, "lookup"

    const-string v8, "phonetic_name"

    const-string v9, "starred"

    const-string v10, "snippet"

    .line 81
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

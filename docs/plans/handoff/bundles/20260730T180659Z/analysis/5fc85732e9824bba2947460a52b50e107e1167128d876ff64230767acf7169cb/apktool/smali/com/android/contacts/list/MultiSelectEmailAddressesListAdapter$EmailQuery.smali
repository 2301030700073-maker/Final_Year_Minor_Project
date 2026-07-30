.class public Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter$EmailQuery;
.super Ljava/lang/Object;
.source "MultiSelectEmailAddressesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EmailQuery"
.end annotation


# static fields
.field public static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "_id"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    const-string v4, "contact_id"

    const-string v5, "lookup"

    const-string v6, "photo_id"

    const-string v7, "display_name"

    const-string v8, "photo_thumb_uri"

    .line 38
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter$EmailQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "data2"

    const-string v3, "data3"

    const-string v4, "data1"

    const-string v5, "contact_id"

    const-string v6, "lookup"

    const-string v7, "photo_id"

    const-string v8, "display_name_alt"

    const-string v9, "photo_thumb_uri"

    .line 50
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter$EmailQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method
